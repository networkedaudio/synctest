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
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.checkBox3 = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // transceiverList
            // 
            this.transceiverList.FormattingEnabled = true;
            this.transceiverList.Location = new System.Drawing.Point(2, 99);
            this.transceiverList.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.transceiverList.Name = "transceiverList";
            this.transceiverList.Size = new System.Drawing.Size(667, 199);
            this.transceiverList.TabIndex = 12;
            // 
            // configurationDropDown
            // 
            this.configurationDropDown.FormattingEnabled = true;
            this.configurationDropDown.Location = new System.Drawing.Point(76, 41);
            this.configurationDropDown.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.configurationDropDown.Name = "configurationDropDown";
            this.configurationDropDown.Size = new System.Drawing.Size(593, 21);
            this.configurationDropDown.TabIndex = 11;
            this.configurationDropDown.SelectedIndexChanged += new System.EventHandler(this.configurationDropDown_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(2, 45);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Configuration:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(2, 15);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "EHX HXN File:";
            // 
            // projectFilename
            // 
            this.projectFilename.Location = new System.Drawing.Point(76, 10);
            this.projectFilename.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.projectFilename.Name = "projectFilename";
            this.projectFilename.Size = new System.Drawing.Size(593, 20);
            this.projectFilename.TabIndex = 8;
            this.projectFilename.Text = "Select an HXN file...";
            this.projectFilename.Click += new System.EventHandler(this.projectFilename_Click);
            // 
            // roamingLog
            // 
            this.roamingLog.Location = new System.Drawing.Point(9, 344);
            this.roamingLog.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.roamingLog.Multiline = true;
            this.roamingLog.Name = "roamingLog";
            this.roamingLog.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.roamingLog.Size = new System.Drawing.Size(660, 83);
            this.roamingLog.TabIndex = 14;
            // 
            // btnNext
            // 
            this.btnNext.Enabled = false;
            this.btnNext.Location = new System.Drawing.Point(546, 315);
            this.btnNext.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(122, 24);
            this.btnNext.TabIndex = 13;
            this.btnNext.Text = "Scan";
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(604, 77);
            this.checkBox1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(70, 17);
            this.checkBox1.TabIndex = 15;
            this.checkBox1.Text = "Select All";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(2, 80);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Transceivers";
            // 
            // btnGreen
            // 
            this.btnGreen.Enabled = false;
            this.btnGreen.Location = new System.Drawing.Point(2, 314);
            this.btnGreen.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnGreen.Name = "btnGreen";
            this.btnGreen.Size = new System.Drawing.Size(75, 24);
            this.btnGreen.TabIndex = 17;
            this.btnGreen.Text = "[ ] Green";
            this.btnGreen.UseVisualStyleBackColor = true;
            this.btnGreen.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // btnRed
            // 
            this.btnRed.Enabled = false;
            this.btnRed.Location = new System.Drawing.Point(116, 314);
            this.btnRed.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnRed.Name = "btnRed";
            this.btnRed.Size = new System.Drawing.Size(75, 24);
            this.btnRed.TabIndex = 18;
            this.btnRed.Text = "[ ] Red";
            this.btnRed.UseVisualStyleBackColor = true;
            this.btnRed.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // btnBlue
            // 
            this.btnBlue.Enabled = false;
            this.btnBlue.Location = new System.Drawing.Point(230, 314);
            this.btnBlue.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnBlue.Name = "btnBlue";
            this.btnBlue.Size = new System.Drawing.Size(75, 24);
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
            this.cmbSeconds.Location = new System.Drawing.Point(493, 318);
            this.cmbSeconds.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cmbSeconds.Name = "cmbSeconds";
            this.cmbSeconds.Size = new System.Drawing.Size(50, 21);
            this.cmbSeconds.TabIndex = 20;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(440, 320);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 13);
            this.label4.TabIndex = 21;
            this.label4.Text = "Seconds:";
            // 
            // checkBox2
            // 
            this.checkBox2.AutoSize = true;
            this.checkBox2.Checked = true;
            this.checkBox2.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBox2.Location = new System.Drawing.Point(90, 80);
            this.checkBox2.Margin = new System.Windows.Forms.Padding(2);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(75, 17);
            this.checkBox2.TabIndex = 22;
            this.checkBox2.Text = "Pattern 00";
            this.checkBox2.UseVisualStyleBackColor = true;
            // 
            // checkBox3
            // 
            this.checkBox3.AutoSize = true;
            this.checkBox3.Checked = true;
            this.checkBox3.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBox3.Location = new System.Drawing.Point(169, 80);
            this.checkBox3.Margin = new System.Windows.Forms.Padding(2);
            this.checkBox3.Name = "checkBox3";
            this.checkBox3.Size = new System.Drawing.Size(90, 17);
            this.checkBox3.TabIndex = 23;
            this.checkBox3.Text = "Pattern 55-aa";
            this.checkBox3.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(708, 451);
            this.Controls.Add(this.checkBox3);
            this.Controls.Add(this.checkBox2);
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
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
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
        private System.Windows.Forms.CheckBox checkBox2;
        private System.Windows.Forms.CheckBox checkBox3;
    }
}

