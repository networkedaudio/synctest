namespace DesyncDetection
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.transceiverList = new System.Windows.Forms.CheckedListBox();
            this.configurationDropDown = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.projectFilename = new System.Windows.Forms.TextBox();
            this.roamingLog = new System.Windows.Forms.TextBox();
            this.btnNext = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnGreen = new System.Windows.Forms.Button();
            this.btnRed = new System.Windows.Forms.Button();
            this.btnBlue = new System.Windows.Forms.Button();
            this.cmbSeconds = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbSearchForZeros = new System.Windows.Forms.CheckBox();
            this.cbSearchForPattern = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // transceiverList
            // 
            this.transceiverList.FormattingEnabled = true;
            this.transceiverList.Location = new System.Drawing.Point(3, 152);
            this.transceiverList.Name = "transceiverList";
            this.transceiverList.Size = new System.Drawing.Size(998, 303);
            this.transceiverList.TabIndex = 12;
            // 
            // configurationDropDown
            // 
            this.configurationDropDown.FormattingEnabled = true;
            this.configurationDropDown.Location = new System.Drawing.Point(114, 63);
            this.configurationDropDown.Name = "configurationDropDown";
            this.configurationDropDown.Size = new System.Drawing.Size(888, 28);
            this.configurationDropDown.TabIndex = 11;
            this.configurationDropDown.SelectedIndexChanged += new System.EventHandler(this.configurationDropDown_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 69);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(108, 20);
            this.label3.TabIndex = 10;
            this.label3.Text = "Configuration:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 20);
            this.label1.TabIndex = 9;
            this.label1.Text = "EHX HXN File:";
            // 
            // projectFilename
            // 
            this.projectFilename.Location = new System.Drawing.Point(114, 15);
            this.projectFilename.Name = "projectFilename";
            this.projectFilename.Size = new System.Drawing.Size(888, 26);
            this.projectFilename.TabIndex = 8;
            this.projectFilename.Text = "Select an HXN file...";
            this.projectFilename.Click += new System.EventHandler(this.projectFilename_Click);
            // 
            // roamingLog
            // 
            this.roamingLog.Location = new System.Drawing.Point(14, 529);
            this.roamingLog.Multiline = true;
            this.roamingLog.Name = "roamingLog";
            this.roamingLog.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.roamingLog.Size = new System.Drawing.Size(988, 126);
            this.roamingLog.TabIndex = 14;
            // 
            // btnNext
            // 
            this.btnNext.Enabled = false;
            this.btnNext.Location = new System.Drawing.Point(819, 485);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(183, 37);
            this.btnNext.TabIndex = 13;
            this.btnNext.Text = "Scan";
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(906, 118);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(101, 24);
            this.checkBox1.TabIndex = 15;
            this.checkBox1.Text = "Select All";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 123);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(98, 20);
            this.label2.TabIndex = 16;
            this.label2.Text = "Transceivers";
            // 
            // btnGreen
            // 
            this.btnGreen.Enabled = false;
            this.btnGreen.Location = new System.Drawing.Point(3, 483);
            this.btnGreen.Name = "btnGreen";
            this.btnGreen.Size = new System.Drawing.Size(112, 37);
            this.btnGreen.TabIndex = 17;
            this.btnGreen.Text = "[ ] Green";
            this.btnGreen.UseVisualStyleBackColor = true;
            this.btnGreen.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // btnRed
            // 
            this.btnRed.Enabled = false;
            this.btnRed.Location = new System.Drawing.Point(174, 483);
            this.btnRed.Name = "btnRed";
            this.btnRed.Size = new System.Drawing.Size(112, 37);
            this.btnRed.TabIndex = 18;
            this.btnRed.Text = "[ ] Red";
            this.btnRed.UseVisualStyleBackColor = true;
            this.btnRed.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // btnBlue
            // 
            this.btnBlue.Enabled = false;
            this.btnBlue.Location = new System.Drawing.Point(345, 483);
            this.btnBlue.Name = "btnBlue";
            this.btnBlue.Size = new System.Drawing.Size(112, 37);
            this.btnBlue.TabIndex = 19;
            this.btnBlue.Text = "[ ] Blue";
            this.btnBlue.UseVisualStyleBackColor = true;
            this.btnBlue.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // cmbSeconds
            // 
            this.cmbSeconds.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbSeconds.FormattingEnabled = true;
            this.cmbSeconds.Items.AddRange(new object[] {
            "10",
            "20",
            "30",
            "40",
            "50",
            "60",
            "70",
            "80",
            "90",
            "100",
            "110",
            "120",
            "130",
            "140",
            "150",
            "160",
            "170",
            "180",
            "190",
            "200"});
            this.cmbSeconds.Location = new System.Drawing.Point(740, 489);
            this.cmbSeconds.Name = "cmbSeconds";
            this.cmbSeconds.Size = new System.Drawing.Size(73, 28);
            this.cmbSeconds.TabIndex = 20;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(660, 492);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(76, 20);
            this.label4.TabIndex = 21;
            this.label4.Text = "Seconds:";
            // 
            // cbSearchForZeros
            // 
            this.cbSearchForZeros.AutoSize = true;
            this.cbSearchForZeros.Checked = true;
            this.cbSearchForZeros.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSearchForZeros.Location = new System.Drawing.Point(135, 123);
            this.cbSearchForZeros.Name = "cbSearchForZeros";
            this.cbSearchForZeros.Size = new System.Drawing.Size(109, 24);
            this.cbSearchForZeros.TabIndex = 22;
            this.cbSearchForZeros.Text = "Pattern 00";
            this.cbSearchForZeros.UseVisualStyleBackColor = true;
            // 
            // cbSearchForPattern
            // 
            this.cbSearchForPattern.AutoSize = true;
            this.cbSearchForPattern.Checked = true;
            this.cbSearchForPattern.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSearchForPattern.Location = new System.Drawing.Point(254, 123);
            this.cbSearchForPattern.Name = "cbSearchForPattern";
            this.cbSearchForPattern.Size = new System.Drawing.Size(132, 24);
            this.cbSearchForPattern.TabIndex = 23;
            this.cbSearchForPattern.Text = "Pattern 55-aa";
            this.cbSearchForPattern.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1017, 694);
            this.Controls.Add(this.cbSearchForPattern);
            this.Controls.Add(this.cbSearchForZeros);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbSeconds);
            this.Controls.Add(this.btnBlue);
            this.Controls.Add(this.btnRed);
            this.Controls.Add(this.btnGreen);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.roamingLog);
            this.Controls.Add(this.btnNext);
            this.Controls.Add(this.transceiverList);
            this.Controls.Add(this.configurationDropDown);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.projectFilename);
            this.Name = "Form1";
            this.Text = "Transceiver Sync Tester v1.1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.CheckedListBox transceiverList;
        private System.Windows.Forms.ComboBox configurationDropDown;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox projectFilename;
        private System.Windows.Forms.TextBox roamingLog;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnGreen;
        private System.Windows.Forms.Button btnRed;
        private System.Windows.Forms.Button btnBlue;
        private System.Windows.Forms.ComboBox cmbSeconds;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox cbSearchForZeros;
        private System.Windows.Forms.CheckBox cbSearchForPattern;
    }
}

