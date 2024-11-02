
using Shared.ObjectModel;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using System.Threading;
using System.Windows.Forms;
using Win32Interop.WinHandles;

namespace DesyncDetection
{
    public partial class Form1 : Form
    {
        [DllImport("USER32.DLL", CharSet = CharSet.Unicode)]
        public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("USER32.DLL")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);

        Project CurrentProject;
        Configuration CurrentConfiguration;
        int CheckedListIndex = -1;
        VirtualPort CurrentBeltpack;
        string[] INIText;

        Dictionary<string, Configuration> Configurations = new Dictionary<string, Configuration>();
        Dictionary<string, VirtualAntennaPort> Transceivers = new Dictionary<string, VirtualAntennaPort>();
        public Form1()
        {
            InitializeComponent();
        }

        private void projectFilename_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                projectFilename.Text = openFileDialog1.FileName;
                CurrentProject = Project.Import(openFileDialog1.FileName);
                UpdateConfigurations();
            }
        }

        private void UpdateConfigurations()
        {
            Configurations.Clear();
            configurationDropDown.Items.Clear();

            foreach (var frame in CurrentProject.Frames.Values)
            {
                foreach (var configuration in frame.Configurations)
                {
                    Configurations.Add(configuration.Configuration.Name, configuration.Configuration);
                    configurationDropDown.Items.Add(configuration.Configuration.Name);
                }
            }
            if (configurationDropDown.Items.Count > 0)
            {
                configurationDropDown.SelectedIndex = 0;
            }
            else
            {
                MessageBox.Show("No configurations found in the project file");
            }
        }

        private void UpdateAntennas()
        {
            transceiverList.Items.Clear();
            Transceivers.Clear();

            foreach (var antenna in CurrentConfiguration.VirtualAntennaPorts.Values)
            {
                string transceiverDetails = antenna.Label.TalkListen + " :" + antenna.Description;

                if (!Transceivers.ContainsKey(transceiverDetails))
                {
                    transceiverList.Items.Add(transceiverDetails);
                    Transceivers.Add(transceiverDetails, antenna);
                }
            }

            bool enableButtons = (transceiverList.Items.Count > 0);
            {
                btnBlue.Enabled = enableButtons;
                btnGreen.Enabled = enableButtons;
                btnRed.Enabled = enableButtons;
                btnNext.Enabled = enableButtons;
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            string path = @"C:\Users\suppo\Desktop\RSX\RSX\RtxEaiPortServer.ini.template";
            INIText = File.ReadAllLines(path);
            cmbSeconds.SelectedIndex = 1;
        }

        private void configurationDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            CurrentConfiguration = Configurations[(string)configurationDropDown.SelectedItem];
            UpdateAntennas();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            for (int x = 0; x < transceiverList.Items.Count; x++)
            {
                transceiverList.SetItemChecked(x, checkBox1.Checked);
            }

            if (checkBox1.Checked)
            {
                btnGreen.Text = btnGreen.Text.Replace("[ ]", "[x]");
                btnBlue.Text = btnBlue.Text.Replace("[ ]", "[x]");
                btnRed.Text = btnRed.Text.Replace("[ ]", "[x]");
            }
            else
            {
                btnGreen.Text = btnGreen.Text.Replace("[x]", "[ ]");
                btnBlue.Text = btnBlue.Text.Replace("[x]", "[ ]");
                btnRed.Text = btnRed.Text.Replace("[x]", "[ ]");
            }

        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (transceiverList.CheckedIndices.Count == 0)
            {
                MessageBox.Show("Please select at least one antenna");
            }
            else
            {
                while(transceiverList.CheckedIndices.Count > 0)
                {
                    var successfulCheck = CheckNextTransceiver();

                    if (successfulCheck)
                    {
                        roamingLog.AppendText("Transceiver looks fine." + Environment.NewLine);
                        transceiverList.SetItemChecked(index, false);
                    }
                    else
                    {
                        break;
                    }
                }
 
            }

        }

        int index = 0;

        private bool CheckNextTransceiver()
        {
            if (transceiverList.CheckedIndices.Count > 0)
            {


                index =  transceiverList.CheckedIndices[0];

                var transceiverString = transceiverList.Items[index].ToString();
                if (Transceivers.ContainsKey(transceiverString))
                {
                    var transceiver = Transceivers[transceiverString];
                    if (transceiver != null)
                    {
                        roamingLog.AppendText("Selected Antenna: " + transceiver.Label.TalkListen + " : " + transceiver.Description + Environment.NewLine);
                        roamingLog.AppendText("IP Address: " + transceiver.RemoteIPAddress + Environment.NewLine);
                    }

                    List<string> list = new List<string>();
                    foreach (var line in INIText)
                    {
                        var newLine = line.Replace("[IPADDRESS]", transceiver.RemoteIPAddress.ToString());
                        list.Add(newLine);
                    }

                    File.WriteAllLines("RSX\\RtxEaiPortServer.ini", list);
                    KillRSX();

                    ProcessStartInfo rsxProcess = new ProcessStartInfo();
                    rsxProcess.FileName = "RSX\\Rsx_rfp.exe";
                    rsxProcess.WindowStyle = ProcessWindowStyle.Normal;
                    rsxProcess.UseShellExecute = false;
                    rsxProcess.WorkingDirectory = "RSX";
                    
                    Process.Start(rsxProcess);

                    string transceiverName = "RPN" + transceiver.RpnNumber + ".log";

                    if (File.Exists(transceiverName))
                    {
                        File.Delete(transceiverName);
                    }

                    Thread.Sleep(5000);

                    var window = TopLevelWindowUtils.FindWindow(wh => wh.GetWindowText().Contains("Rfp"));

                    if (SetForegroundWindow(window.RawPtr))
                    {
                        SendKeys.Send("%{f}"); //Alt+F
                        SendKeys.Send("{M}"); //A
                        Thread.Sleep(1000);
                        SendKeys.Send("S 0x101ffae 8 500");
                        Thread.Sleep(500);
                        SendKeys.Send("{ENTER}");
                        Thread.Sleep(1000);
                        SendKeys.Send(transceiverName);
                        Thread.Sleep(1000);
                        SendKeys.Send("{ENTER}");

                        if (int.TryParse(cmbSeconds.SelectedItem.ToString(), out var seconds))
                        {
                            Thread.Sleep(seconds * 1000);
                        }
                        else
                        {
                            Thread.Sleep(10000);
                        }

                        KillRSX();

                        Thread.Sleep(1000);

                        if (CheckFileForZeros(transceiverName, transceiver))
                        {
                            return true;
                        }

                    }
                    else
                    {
                        MessageBox.Show("Could not find RSX window");
                    }


                }
            }

            return false;
        }

        private bool CheckFileForZeros(string filename, VirtualAntennaPort transceiver)
        {
            bool fileHasZeros = false;

            if (File.Exists(filename))
            {
                var file = File.ReadAllLines(filename);
                if (file.Length > 0)
                {

                    // log file size to log file
                    foreach (var line in file)
                    {
                        if (line.Contains("Address"))
                        {
                            var fullLine = line.Split(',');
                            if (fullLine.Length == 2)
                            {
                                var spaces = fullLine[1].Split(' ');
                                if (spaces.Length == 12)
                                {
                                    if (spaces[3] == "00")
                                    {
                                        // log that this is OK
                                        fileHasZeros = true;
                                        break;
                                    }
                                }

                            }

                        }
                    }

                    if (fileHasZeros)
                    {
                        roamingLog.AppendText($"Transceiver {transceiver.Label.TalkListen}:{transceiver.Description}{Environment.NewLine} looks fine.{Environment.NewLine}");
                    }
                    else
                    {
                        MessageBox.Show($"Transceiver {transceiver.Label.TalkListen}:{transceiver.Description}{Environment.NewLine}File does not have zeros - {filename}{Environment.NewLine}It may take up to a minute or a minute and a half to be sure, but this looks bad.");
                    }
                }
                else
                {
                    MessageBox.Show($"File is empty - {filename}.{Environment.NewLine}This may be because RTX isn't working or the transceiver {transceiver.Label.TalkListen} isn't responding.");
                }
            }
            else
            {
                MessageBox.Show("File not found - " + filename);
            }

            return fileHasZeros;
        }

        private static void KillRSX()
        {
            foreach (var process in Process.GetProcessesByName("rsx_rfp"))
            {
                process.Kill();
            }
        }

        private void btnColor_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            string color = btn.Text.Substring(4, 1);
            bool shouldBeChecked = btn.Text.Contains("[x]");
            List<int> changeCheckedState = new List<int>();

            foreach (var item in transceiverList.Items)
            {
                if (item.ToString().Substring(1, 1) == color)
                {
                    var index = transceiverList.Items.IndexOf(item);
                    changeCheckedState.Add(index);

                }
            }

            foreach (var index in changeCheckedState)
            {
                transceiverList.SetItemChecked(index, !shouldBeChecked);
            }

            if (shouldBeChecked)
            {
                btn.Text = btn.Text.Replace("[x]", "[ ]");
            }
            else
            {
                btn.Text = btn.Text.Replace("[ ]", "[x]");
            }
        }
    }
}
