[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$Tab_Control = $null
[System.Windows.Forms.TabPage]$tab_Setup = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.TabPage]$tab_Migrate = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.TextBox]$Txt_ConfigFileName = $null
[System.Windows.Forms.Label]$label25 = $null
[System.Windows.Forms.Label]$label26 = $null
[System.Windows.Forms.Button]$btn_SaveConfig = $null
[System.Windows.Forms.Button]$Btn_ConfigBrowse = $null
[System.Windows.Forms.Button]$Btn_LoadConfig = $null
[System.Windows.Forms.DataGridView]$grid_VoicePolicy = $null
[System.Windows.Forms.DataGridView]$grid_DialPlan = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Button]$button3 = $null
[System.Windows.Forms.Button]$button4 = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$src_VoicePolicy = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dst_VoicePolicy = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$src_Dialplan = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dst_Dialplan = $null
[System.Windows.Forms.ComboBox]$cbx_Frontend = $null
[System.Windows.Forms.ComboBox]$cbx_DstSbaPool = $null
[System.Windows.Forms.ComboBox]$cbx_SrcSbaPool = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$Tab_Control = (New-Object -TypeName System.Windows.Forms.TabControl)
$tab_Setup = (New-Object -TypeName System.Windows.Forms.TabPage)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$button3 = (New-Object -TypeName System.Windows.Forms.Button)
$button4 = (New-Object -TypeName System.Windows.Forms.Button)
$Txt_ConfigFileName = (New-Object -TypeName System.Windows.Forms.TextBox)
$label25 = (New-Object -TypeName System.Windows.Forms.Label)
$label26 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_SaveConfig = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_ConfigBrowse = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_LoadConfig = (New-Object -TypeName System.Windows.Forms.Button)
$grid_VoicePolicy = (New-Object -TypeName System.Windows.Forms.DataGridView)
$src_VoicePolicy = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$dst_VoicePolicy = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$grid_DialPlan = (New-Object -TypeName System.Windows.Forms.DataGridView)
$src_Dialplan = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$dst_Dialplan = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_DstSbaPool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_Frontend = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_SrcSbaPool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$tab_Migrate = (New-Object -TypeName System.Windows.Forms.TabPage)
$Tab_Control.SuspendLayout()
$tab_Setup.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$grid_VoicePolicy).BeginInit()
([System.ComponentModel.ISupportInitialize]$grid_DialPlan).BeginInit()
$MainForm.SuspendLayout()
#
#Tab_Control
#
$Tab_Control.Controls.Add($tab_Setup)
$Tab_Control.Controls.Add($tab_Migrate)
$Tab_Control.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$Tab_Control.Name = [System.String]'Tab_Control'
$Tab_Control.SelectedIndex = [System.Int32]0
$Tab_Control.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]751,[System.Int32]449))
$Tab_Control.TabIndex = [System.Int32]0
#
#tab_Setup
#
$tab_Setup.Controls.Add($textBox1)
$tab_Setup.Controls.Add($label5)
$tab_Setup.Controls.Add($label6)
$tab_Setup.Controls.Add($button2)
$tab_Setup.Controls.Add($button3)
$tab_Setup.Controls.Add($button4)
$tab_Setup.Controls.Add($Txt_ConfigFileName)
$tab_Setup.Controls.Add($label25)
$tab_Setup.Controls.Add($label26)
$tab_Setup.Controls.Add($btn_SaveConfig)
$tab_Setup.Controls.Add($Btn_ConfigBrowse)
$tab_Setup.Controls.Add($Btn_LoadConfig)
$tab_Setup.Controls.Add($grid_VoicePolicy)
$tab_Setup.Controls.Add($grid_DialPlan)
$tab_Setup.Controls.Add($label4)
$tab_Setup.Controls.Add($label3)
$tab_Setup.Controls.Add($cbx_DstSbaPool)
$tab_Setup.Controls.Add($label2)
$tab_Setup.Controls.Add($cbx_Frontend)
$tab_Setup.Controls.Add($label1)
$tab_Setup.Controls.Add($label13)
$tab_Setup.Controls.Add($cbx_SrcSbaPool)
$tab_Setup.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$tab_Setup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tab_Setup.Name = [System.String]'tab_Setup'
$tab_Setup.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tab_Setup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]743,[System.Int32]423))
$tab_Setup.TabIndex = [System.Int32]0
$tab_Setup.Text = [System.String]'Setup'
$tab_Setup.UseVisualStyleBackColor = $true
#
#textBox1
#
$textBox1.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]114,[System.Int32]100))
$textBox1.Name = [System.String]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]342,[System.Int32]20))
$textBox1.TabIndex = [System.Int32]62
$textBox1.Text = [System.String]'($MyInvocation.MyCommand.Path)'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]103))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]13))
$label5.TabIndex = [System.Int32]61
$label5.Text = [System.String]'File Location'
#
#label6
#
$label6.AutoSize = $true
$label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]75))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]430,[System.Int32]13))
$label6.TabIndex = [System.Int32]60
$label6.Text = [System.String]'Migration File (Stores Migration Progress in the event a resume is required)'
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::White
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]545,[System.Int32]98))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button2.TabIndex = [System.Int32]59
$button2.Text = [System.String]'Save'
$button2.UseVisualStyleBackColor = $false
#
#button3
#
$button3.BackColor = [System.Drawing.Color]::White
$button3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]626,[System.Int32]98))
$button3.Name = [System.String]'button3'
$button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button3.TabIndex = [System.Int32]58
$button3.Text = [System.String]'Browse...'
$button3.UseVisualStyleBackColor = $false
#
#button4
#
$button4.BackColor = [System.Drawing.Color]::White
$button4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]464,[System.Int32]98))
$button4.Name = [System.String]'button4'
$button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button4.TabIndex = [System.Int32]57
$button4.Text = [System.String]'Load'
$button4.UseVisualStyleBackColor = $false
#
#Txt_ConfigFileName
#
$Txt_ConfigFileName.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$Txt_ConfigFileName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]114,[System.Int32]32))
$Txt_ConfigFileName.Name = [System.String]'Txt_ConfigFileName'
$Txt_ConfigFileName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]342,[System.Int32]20))
$Txt_ConfigFileName.TabIndex = [System.Int32]56
$Txt_ConfigFileName.Text = [System.String]'($MyInvocation.MyCommand.Path)'
#
#label25
#
$label25.AutoSize = $true
$label25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]35))
$label25.Name = [System.String]'label25'
$label25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]13))
$label25.TabIndex = [System.Int32]55
$label25.Text = [System.String]'File Location'
#
#label26
#
$label26.AutoSize = $true
$label26.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label26.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]7))
$label26.Name = [System.String]'label26'
$label26.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]267,[System.Int32]13))
$label26.TabIndex = [System.Int32]54
$label26.Text = [System.String]'Config File (Stores Dial / Voice Plan mapping)'
#
#btn_SaveConfig
#
$btn_SaveConfig.BackColor = [System.Drawing.Color]::White
$btn_SaveConfig.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_SaveConfig.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btn_SaveConfig.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]545,[System.Int32]30))
$btn_SaveConfig.Name = [System.String]'btn_SaveConfig'
$btn_SaveConfig.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_SaveConfig.TabIndex = [System.Int32]53
$btn_SaveConfig.Text = [System.String]'Save'
$btn_SaveConfig.UseVisualStyleBackColor = $false
#
#Btn_ConfigBrowse
#
$Btn_ConfigBrowse.BackColor = [System.Drawing.Color]::White
$Btn_ConfigBrowse.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_ConfigBrowse.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Btn_ConfigBrowse.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]626,[System.Int32]30))
$Btn_ConfigBrowse.Name = [System.String]'Btn_ConfigBrowse'
$Btn_ConfigBrowse.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Btn_ConfigBrowse.TabIndex = [System.Int32]52
$Btn_ConfigBrowse.Text = [System.String]'Browse...'
$Btn_ConfigBrowse.UseVisualStyleBackColor = $false
#
#Btn_LoadConfig
#
$Btn_LoadConfig.BackColor = [System.Drawing.Color]::White
$Btn_LoadConfig.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_LoadConfig.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Btn_LoadConfig.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]464,[System.Int32]30))
$Btn_LoadConfig.Name = [System.String]'Btn_LoadConfig'
$Btn_LoadConfig.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Btn_LoadConfig.TabIndex = [System.Int32]51
$Btn_LoadConfig.Text = [System.String]'Load'
$Btn_LoadConfig.UseVisualStyleBackColor = $false
#
#grid_VoicePolicy
#
$grid_VoicePolicy.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$grid_VoicePolicy.Columns.AddRange($src_VoicePolicy,$dst_VoicePolicy)
$grid_VoicePolicy.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]363,[System.Int32]291))
$grid_VoicePolicy.Name = [System.String]'grid_VoicePolicy'
$grid_VoicePolicy.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]357,[System.Int32]110))
$grid_VoicePolicy.TabIndex = [System.Int32]31
$grid_VoicePolicy.add_CellContentClick($dataGridView2_CellContentClick)
#
#src_VoicePolicy
#
$src_VoicePolicy.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$src_VoicePolicy.HeaderText = [System.String]'Source Voice Policy'
$src_VoicePolicy.Name = [System.String]'src_VoicePolicy'
$src_VoicePolicy.Width = [System.Int32]72
#
#dst_VoicePolicy
#
$dst_VoicePolicy.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dst_VoicePolicy.HeaderText = [System.String]'Destination Dialplan'
$dst_VoicePolicy.Name = [System.String]'dst_VoicePolicy'
$dst_VoicePolicy.Width = [System.Int32]96
#
#grid_DialPlan
#
$grid_DialPlan.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$grid_DialPlan.Columns.AddRange($src_Dialplan,$dst_Dialplan)
$grid_DialPlan.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]291))
$grid_DialPlan.Name = [System.String]'grid_DialPlan'
$grid_DialPlan.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]342,[System.Int32]110))
$grid_DialPlan.TabIndex = [System.Int32]30
$grid_DialPlan.add_CellContentClick($grid_DialPlan_CellContentClick)
#
#src_Dialplan
#
$src_Dialplan.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$src_Dialplan.HeaderText = [System.String]'Source Dial Plan'
$src_Dialplan.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$src_Dialplan.Name = [System.String]'src_Dialplan'
$src_Dialplan.Width = [System.Int32]64
#
#dst_Dialplan
#
$dst_Dialplan.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dst_Dialplan.HeaderText = [System.String]'Destination Dialplan'
$dst_Dialplan.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$dst_Dialplan.Name = [System.String]'dst_Dialplan'
$dst_Dialplan.Width = [System.Int32]96
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]275))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]13))
$label4.TabIndex = [System.Int32]29
$label4.Text = [System.String]'Dial Plan Re-Mapping'
#
#label3
#
$label3.AutoSize = $true
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]275))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]13))
$label3.TabIndex = [System.Int32]28
$label3.Text = [System.String]'Voice Policy Re-Mapping'
$label3.add_Click($label3_Click)
#
#cbx_DstSbaPool
#
$cbx_DstSbaPool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_DstSbaPool.FormattingEnabled = $true
$cbx_DstSbaPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]495,[System.Int32]227))
$cbx_DstSbaPool.Name = [System.String]'cbx_DstSbaPool'
$cbx_DstSbaPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_DstSbaPool.TabIndex = [System.Int32]27
$cbx_DstSbaPool.Text = [System.String]'---None Selected---'
#
#label2
#
$label2.AutoSize = $true
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]492,[System.Int32]211))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]99,[System.Int32]13))
$label2.TabIndex = [System.Int32]26
$label2.Text = [System.String]'Destination SBA'
#
#cbx_Frontend
#
$cbx_Frontend.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_Frontend.FormattingEnabled = $true
$cbx_Frontend.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]255,[System.Int32]227))
$cbx_Frontend.Name = [System.String]'cbx_Frontend'
$cbx_Frontend.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_Frontend.TabIndex = [System.Int32]25
$cbx_Frontend.Text = [System.String]'---None Selected---'
#
#label1
#
$label1.AutoSize = $true
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]252,[System.Int32]211))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]13))
$label1.TabIndex = [System.Int32]24
$label1.Text = [System.String]'Intermediate FrontEnd (?)'
#
#label13
#
$label13.AutoSize = $true
$label13.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]210))
$label13.Name = [System.String]'label13'
$label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]13))
$label13.TabIndex = [System.Int32]23
$label13.Text = [System.String]'Source SBA'
#
#cbx_SrcSbaPool
#
$cbx_SrcSbaPool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_SrcSbaPool.FormattingEnabled = $true
$cbx_SrcSbaPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]227))
$cbx_SrcSbaPool.Name = [System.String]'cbx_SrcSbaPool'
$cbx_SrcSbaPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_SrcSbaPool.TabIndex = [System.Int32]22
$cbx_SrcSbaPool.Text = [System.String]'---None Selected---'
#
#tab_Migrate
#
$tab_Migrate.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$tab_Migrate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tab_Migrate.Name = [System.String]'tab_Migrate'
$tab_Migrate.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tab_Migrate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]743,[System.Int32]423))
$tab_Migrate.TabIndex = [System.Int32]1
$tab_Migrate.Text = [System.String]'Migrate'
$tab_Migrate.UseVisualStyleBackColor = $true
#
#MainForm
#
$MainForm.BackColor = [System.Drawing.Color]::White
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]765,[System.Int32]473))
$MainForm.Controls.Add($Tab_Control)
$MainForm.Name = [System.String]'MainForm'
$Tab_Control.ResumeLayout($false)
$tab_Setup.ResumeLayout($false)
$tab_Setup.PerformLayout()
([System.ComponentModel.ISupportInitialize]$grid_VoicePolicy).EndInit()
([System.ComponentModel.ISupportInitialize]$grid_DialPlan).EndInit()
$MainForm.ResumeLayout($false)
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Tab_Control -Value $Tab_Control -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tab_Setup -Value $tab_Setup -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tab_Migrate -Value $tab_Migrate -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Txt_ConfigFileName -Value $Txt_ConfigFileName -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label26 -Value $label26 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_SaveConfig -Value $btn_SaveConfig -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_ConfigBrowse -Value $Btn_ConfigBrowse -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_LoadConfig -Value $Btn_LoadConfig -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name grid_VoicePolicy -Value $grid_VoicePolicy -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name grid_DialPlan -Value $grid_DialPlan -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button3 -Value $button3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button4 -Value $button4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name src_VoicePolicy -Value $src_VoicePolicy -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dst_VoicePolicy -Value $dst_VoicePolicy -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name src_Dialplan -Value $src_Dialplan -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dst_Dialplan -Value $dst_Dialplan -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_Frontend -Value $cbx_Frontend -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_DstSbaPool -Value $cbx_DstSbaPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_SrcSbaPool -Value $cbx_SrcSbaPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
