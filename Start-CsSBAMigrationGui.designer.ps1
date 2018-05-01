[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$Tab_Control = $null
[System.Windows.Forms.TabPage]$tab_Setup = $null
[System.Windows.Forms.TabPage]$tab_Migrate = $null
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
[System.Windows.Forms.DataGridViewComboBoxColumn]$src_Dialplan = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dst_Dialplan = $null
[System.Windows.Forms.DataGridView]$dataGridView1 = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dataGridViewComboBoxColumn1 = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dataGridViewComboBoxColumn2 = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$src_VoicePolicy = $null
[System.Windows.Forms.DataGridViewComboBoxColumn]$dst_VoicePolicy = $null
[System.Windows.Forms.ComboBox]$cbx_MigrationType = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Label]$lbl_DialPlanMap = $null
[System.Windows.Forms.Label]$lbl_VoicePolicyMap = $null
[System.Windows.Forms.ComboBox]$cbx_DstPool = $null
[System.Windows.Forms.Label]$lbl_DstPool = $null
[System.Windows.Forms.ComboBox]$cbx_IntPool = $null
[System.Windows.Forms.Label]$lbl_IntermPool = $null
[System.Windows.Forms.Label]$lbl_SourcePool = $null
[System.Windows.Forms.ComboBox]$cbx_SrcPool = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle1 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle2 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle3 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
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
$lbl_DialPlanMap = (New-Object -TypeName System.Windows.Forms.Label)
$lbl_VoicePolicyMap = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_DstPool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$lbl_DstPool = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_IntPool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$lbl_IntermPool = (New-Object -TypeName System.Windows.Forms.Label)
$lbl_SourcePool = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_SrcPool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$tab_Migrate = (New-Object -TypeName System.Windows.Forms.TabPage)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$dataGridView1 = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewComboBoxColumn1 = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$dataGridViewComboBoxColumn2 = (New-Object -TypeName System.Windows.Forms.DataGridViewComboBoxColumn)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_MigrationType = (New-Object -TypeName System.Windows.Forms.ComboBox)
$Tab_Control.SuspendLayout()
$tab_Setup.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$grid_VoicePolicy).BeginInit()
([System.ComponentModel.ISupportInitialize]$grid_DialPlan).BeginInit()
$tab_Migrate.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$dataGridView1).BeginInit()
$MainForm.SuspendLayout()
#
#Tab_Control
#
$Tab_Control.Controls.Add($tab_Setup)
$Tab_Control.Controls.Add($tab_Migrate)
$Tab_Control.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$Tab_Control.Name = [System.String]'Tab_Control'
$Tab_Control.SelectedIndex = [System.Int32]0
$Tab_Control.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]897,[System.Int32]552))
$Tab_Control.TabIndex = [System.Int32]0
#
#tab_Setup
#
$tab_Setup.Controls.Add($cbx_MigrationType)
$tab_Setup.Controls.Add($label11)
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
$tab_Setup.Controls.Add($lbl_DialPlanMap)
$tab_Setup.Controls.Add($lbl_VoicePolicyMap)
$tab_Setup.Controls.Add($cbx_DstPool)
$tab_Setup.Controls.Add($lbl_DstPool)
$tab_Setup.Controls.Add($cbx_IntPool)
$tab_Setup.Controls.Add($lbl_IntermPool)
$tab_Setup.Controls.Add($lbl_SourcePool)
$tab_Setup.Controls.Add($cbx_SrcPool)
$tab_Setup.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$tab_Setup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tab_Setup.Name = [System.String]'tab_Setup'
$tab_Setup.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tab_Setup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]889,[System.Int32]526))
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
$grid_VoicePolicy.Enabled = $false
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
$src_VoicePolicy.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$src_VoicePolicy.Name = [System.String]'src_VoicePolicy'
$src_VoicePolicy.Width = [System.Int32]72
#
#dst_VoicePolicy
#
$dst_VoicePolicy.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dst_VoicePolicy.HeaderText = [System.String]'Destination Dialplan'
$dst_VoicePolicy.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$dst_VoicePolicy.Name = [System.String]'dst_VoicePolicy'
$dst_VoicePolicy.Width = [System.Int32]96
#
#grid_DialPlan
#
$grid_DialPlan.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$grid_DialPlan.Columns.AddRange($src_Dialplan,$dst_Dialplan)
$grid_DialPlan.Enabled = $false
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
#lbl_DialPlanMap
#
$lbl_DialPlanMap.AutoSize = $true
$lbl_DialPlanMap.Enabled = $false
$lbl_DialPlanMap.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_DialPlanMap.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]275))
$lbl_DialPlanMap.Name = [System.String]'lbl_DialPlanMap'
$lbl_DialPlanMap.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]13))
$lbl_DialPlanMap.TabIndex = [System.Int32]29
$lbl_DialPlanMap.Text = [System.String]'Dial Plan Re-Mapping'
#
#lbl_VoicePolicyMap
#
$lbl_VoicePolicyMap.AutoSize = $true
$lbl_VoicePolicyMap.Enabled = $false
$lbl_VoicePolicyMap.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_VoicePolicyMap.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]275))
$lbl_VoicePolicyMap.Name = [System.String]'lbl_VoicePolicyMap'
$lbl_VoicePolicyMap.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]13))
$lbl_VoicePolicyMap.TabIndex = [System.Int32]28
$lbl_VoicePolicyMap.Text = [System.String]'Voice Policy Re-Mapping'
$lbl_VoicePolicyMap.add_Click($label3_Click)
#
#cbx_DstPool
#
$cbx_DstPool.Enabled = $false
$cbx_DstPool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_DstPool.FormattingEnabled = $true
$cbx_DstPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]495,[System.Int32]227))
$cbx_DstPool.Name = [System.String]'cbx_DstPool'
$cbx_DstPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_DstPool.TabIndex = [System.Int32]27
$cbx_DstPool.Text = [System.String]'---None Selected---'
#
#lbl_DstPool
#
$lbl_DstPool.AutoSize = $true
$lbl_DstPool.Enabled = $false
$lbl_DstPool.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_DstPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]492,[System.Int32]211))
$lbl_DstPool.Name = [System.String]'lbl_DstPool'
$lbl_DstPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]13))
$lbl_DstPool.TabIndex = [System.Int32]26
$lbl_DstPool.Text = [System.String]'Destination Pool'
#
#cbx_IntPool
#
$cbx_IntPool.Enabled = $false
$cbx_IntPool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_IntPool.FormattingEnabled = $true
$cbx_IntPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]255,[System.Int32]227))
$cbx_IntPool.Name = [System.String]'cbx_IntPool'
$cbx_IntPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_IntPool.TabIndex = [System.Int32]25
$cbx_IntPool.Text = [System.String]'---None Selected---'
#
#lbl_IntermPool
#
$lbl_IntermPool.AutoSize = $true
$lbl_IntermPool.Enabled = $false
$lbl_IntermPool.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_IntermPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]252,[System.Int32]211))
$lbl_IntermPool.Name = [System.String]'lbl_IntermPool'
$lbl_IntermPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]13))
$lbl_IntermPool.TabIndex = [System.Int32]24
$lbl_IntermPool.Text = [System.String]'Intermediate FrontEnd (?)'
#
#lbl_SourcePool
#
$lbl_SourcePool.AutoSize = $true
$lbl_SourcePool.Enabled = $false
$lbl_SourcePool.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_SourcePool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]210))
$lbl_SourcePool.Name = [System.String]'lbl_SourcePool'
$lbl_SourcePool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]13))
$lbl_SourcePool.TabIndex = [System.Int32]23
$lbl_SourcePool.Text = [System.String]'Source Pool'
#
#cbx_SrcPool
#
$cbx_SrcPool.Enabled = $false
$cbx_SrcPool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_SrcPool.FormattingEnabled = $true
$cbx_SrcPool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]227))
$cbx_SrcPool.Name = [System.String]'cbx_SrcPool'
$cbx_SrcPool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_SrcPool.TabIndex = [System.Int32]22
$cbx_SrcPool.Text = [System.String]'---None Selected---'
#
#tab_Migrate
#
$tab_Migrate.Controls.Add($label10)
$tab_Migrate.Controls.Add($label9)
$tab_Migrate.Controls.Add($label8)
$tab_Migrate.Controls.Add($label7)
$tab_Migrate.Controls.Add($dataGridView1)
$tab_Migrate.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$tab_Migrate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tab_Migrate.Name = [System.String]'tab_Migrate'
$tab_Migrate.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tab_Migrate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]889,[System.Int32]526))
$tab_Migrate.TabIndex = [System.Int32]1
$tab_Migrate.Text = [System.String]'Migrate'
$tab_Migrate.UseVisualStyleBackColor = $true
#
#label10
#
$label10.AutoSize = $true
$label10.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]390))
$label10.Name = [System.String]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]13))
$label10.TabIndex = [System.Int32]35
$label10.Text = [System.String]'Meeting Rooms'
#
#label9
#
$label9.AutoSize = $true
$label9.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]267))
$label9.Name = [System.String]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]13))
$label9.TabIndex = [System.Int32]34
$label9.Text = [System.String]'Common Area Phones'
#
#label8
#
$label8.AutoSize = $true
$label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]165))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]96,[System.Int32]13))
$label8.TabIndex = [System.Int32]33
$label8.Text = [System.String]'Analog Devices'
#
#label7
#
$label7.AutoSize = $true
$label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]18))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]39,[System.Int32]13))
$label7.TabIndex = [System.Int32]32
$label7.Text = [System.String]'Users'
#
#dataGridView1
#
$dataGridViewCellStyle1.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleLeft
$dataGridViewCellStyle1.BackColor = [System.Drawing.SystemColors]::Control
$dataGridViewCellStyle1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$dataGridViewCellStyle1.ForeColor = [System.Drawing.SystemColors]::WindowText
$dataGridViewCellStyle1.SelectionBackColor = [System.Drawing.SystemColors]::Highlight
$dataGridViewCellStyle1.SelectionForeColor = [System.Drawing.SystemColors]::HighlightText
$dataGridViewCellStyle1.WrapMode = [System.Windows.Forms.DataGridViewTriState]::True
$dataGridView1.ColumnHeadersDefaultCellStyle = $dataGridViewCellStyle1
$dataGridView1.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dataGridView1.Columns.AddRange($dataGridViewComboBoxColumn1,$dataGridViewComboBoxColumn2)
$dataGridViewCellStyle2.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleLeft
$dataGridViewCellStyle2.BackColor = [System.Drawing.SystemColors]::Window
$dataGridViewCellStyle2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$dataGridViewCellStyle2.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dataGridViewCellStyle2.SelectionBackColor = [System.Drawing.SystemColors]::Highlight
$dataGridViewCellStyle2.SelectionForeColor = [System.Drawing.SystemColors]::HighlightText
$dataGridViewCellStyle2.WrapMode = [System.Windows.Forms.DataGridViewTriState]::False
$dataGridView1.DefaultCellStyle = $dataGridViewCellStyle2
$dataGridView1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]19,[System.Int32]34))
$dataGridView1.Name = [System.String]'dataGridView1'
$dataGridViewCellStyle3.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleLeft
$dataGridViewCellStyle3.BackColor = [System.Drawing.SystemColors]::Control
$dataGridViewCellStyle3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$dataGridViewCellStyle3.ForeColor = [System.Drawing.SystemColors]::WindowText
$dataGridViewCellStyle3.SelectionBackColor = [System.Drawing.SystemColors]::Highlight
$dataGridViewCellStyle3.SelectionForeColor = [System.Drawing.SystemColors]::HighlightText
$dataGridViewCellStyle3.WrapMode = [System.Windows.Forms.DataGridViewTriState]::True
$dataGridView1.RowHeadersDefaultCellStyle = $dataGridViewCellStyle3
$dataGridView1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]707,[System.Int32]116))
$dataGridView1.TabIndex = [System.Int32]31
#
#dataGridViewComboBoxColumn1
#
$dataGridViewComboBoxColumn1.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewComboBoxColumn1.HeaderText = [System.String]'Source Dial Plan'
$dataGridViewComboBoxColumn1.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$dataGridViewComboBoxColumn1.Name = [System.String]'dataGridViewComboBoxColumn1'
$dataGridViewComboBoxColumn1.Width = [System.Int32]64
#
#dataGridViewComboBoxColumn2
#
$dataGridViewComboBoxColumn2.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewComboBoxColumn2.HeaderText = [System.String]'Destination Dialplan'
$dataGridViewComboBoxColumn2.Items.AddRange([System.Object[]]@([System.String]'--Unassigned--'))
$dataGridViewComboBoxColumn2.Name = [System.String]'dataGridViewComboBoxColumn2'
$dataGridViewComboBoxColumn2.Width = [System.Int32]96
#
#label11
#
$label11.AutoSize = $true
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]155))
$label11.Name = [System.String]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]13))
$label11.TabIndex = [System.Int32]63
$label11.Text = [System.String]'Migration Type'
#
#cbx_MigrationType
#
$cbx_MigrationType.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_MigrationType.FormattingEnabled = $true
$cbx_MigrationType.Items.AddRange([System.Object[]]@([System.String]'SBA to SBA',[System.String]'SBA to FrontEnd',[System.String]'Frontend to SBA',[System.String]'FrontEnd to FrontEnd'))
$cbx_MigrationType.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]114,[System.Int32]152))
$cbx_MigrationType.Name = [System.String]'cbx_MigrationType'
$cbx_MigrationType.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]21))
$cbx_MigrationType.TabIndex = [System.Int32]64
$cbx_MigrationType.Text = [System.String]'---None Selected---'
$cbx_MigrationType.add_SelectedIndexChanged($cbx_MigrationType_SelectedIndexChanged)
#
#MainForm
#
$MainForm.BackColor = [System.Drawing.Color]::White
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]913,[System.Int32]569))
$MainForm.Controls.Add($Tab_Control)
$MainForm.Name = [System.String]'MainForm'
$Tab_Control.ResumeLayout($false)
$tab_Setup.ResumeLayout($false)
$tab_Setup.PerformLayout()
([System.ComponentModel.ISupportInitialize]$grid_VoicePolicy).EndInit()
([System.ComponentModel.ISupportInitialize]$grid_DialPlan).EndInit()
$tab_Migrate.ResumeLayout($false)
$tab_Migrate.PerformLayout()
([System.ComponentModel.ISupportInitialize]$dataGridView1).EndInit()
$MainForm.ResumeLayout($false)
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Tab_Control -Value $Tab_Control -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tab_Setup -Value $tab_Setup -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tab_Migrate -Value $tab_Migrate -MemberType NoteProperty
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
Add-Member -InputObject $MainForm -Name src_Dialplan -Value $src_Dialplan -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dst_Dialplan -Value $dst_Dialplan -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dataGridView1 -Value $dataGridView1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dataGridViewComboBoxColumn1 -Value $dataGridViewComboBoxColumn1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dataGridViewComboBoxColumn2 -Value $dataGridViewComboBoxColumn2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name src_VoicePolicy -Value $src_VoicePolicy -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dst_VoicePolicy -Value $dst_VoicePolicy -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_MigrationType -Value $cbx_MigrationType -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_DialPlanMap -Value $lbl_DialPlanMap -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_VoicePolicyMap -Value $lbl_VoicePolicyMap -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_DstPool -Value $cbx_DstPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_DstPool -Value $lbl_DstPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_IntPool -Value $cbx_IntPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_IntermPool -Value $lbl_IntermPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_SourcePool -Value $lbl_SourcePool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_SrcPool -Value $cbx_SrcPool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
