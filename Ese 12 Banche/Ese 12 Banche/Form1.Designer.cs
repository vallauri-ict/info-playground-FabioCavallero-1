namespace _12_Banche_StoredProcedure_
{
    partial class Form1
    {
        /// <summary>
        /// Variabile di progettazione necessaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Pulire le risorse in uso.
        /// </summary>
        /// <param name="disposing">ha valore true se le risorse gestite devono essere eliminate, false in caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Codice generato da Progettazione Windows Form

        /// <summary>
        /// Metodo necessario per il supporto della finestra di progettazione. Non modificare
        /// il contenuto del metodo con l'editor di codice.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtBanca = new System.Windows.Forms.TextBox();
            this.txtComune = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnSP1 = new System.Windows.Forms.Button();
            this.btnSP2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Banca:";
            // 
            // txtBanca
            // 
            this.txtBanca.Location = new System.Drawing.Point(113, 38);
            this.txtBanca.Name = "txtBanca";
            this.txtBanca.Size = new System.Drawing.Size(130, 22);
            this.txtBanca.TabIndex = 1;
            // 
            // txtComune
            // 
            this.txtComune.Location = new System.Drawing.Point(418, 38);
            this.txtComune.Name = "txtComune";
            this.txtComune.Size = new System.Drawing.Size(130, 22);
            this.txtComune.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(335, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Comune:";
            // 
            // btnSP1
            // 
            this.btnSP1.Location = new System.Drawing.Point(44, 147);
            this.btnSP1.Name = "btnSP1";
            this.btnSP1.Size = new System.Drawing.Size(199, 41);
            this.btnSP1.TabIndex = 4;
            this.btnSP1.Text = "Numero Filiali";
            this.btnSP1.UseVisualStyleBackColor = true;
            this.btnSP1.Click += new System.EventHandler(this.btnSP1_Click);
            // 
            // btnSP2
            // 
            this.btnSP2.Location = new System.Drawing.Point(349, 147);
            this.btnSP2.Name = "btnSP2";
            this.btnSP2.Size = new System.Drawing.Size(199, 41);
            this.btnSP2.TabIndex = 5;
            this.btnSP2.Text = "Elenco Filiali";
            this.btnSP2.UseVisualStyleBackColor = true;
            this.btnSP2.Click += new System.EventHandler(this.btnSP2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(647, 246);
            this.Controls.Add(this.btnSP2);
            this.Controls.Add(this.btnSP1);
            this.Controls.Add(this.txtComune);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtBanca);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtBanca;
        private System.Windows.Forms.TextBox txtComune;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnSP1;
        private System.Windows.Forms.Button btnSP2;
    }
}

