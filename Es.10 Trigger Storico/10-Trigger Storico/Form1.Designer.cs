namespace _10_Trigger_Storico
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
            this.btnStoricoCancellazioni = new System.Windows.Forms.Button();
            this.btnStoricoAggiornati = new System.Windows.Forms.Button();
            this.txtdata = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(109, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Inserire la data:";
            // 
            // btnStoricoCancellazioni
            // 
            this.btnStoricoCancellazioni.Location = new System.Drawing.Point(77, 78);
            this.btnStoricoCancellazioni.Name = "btnStoricoCancellazioni";
            this.btnStoricoCancellazioni.Size = new System.Drawing.Size(170, 34);
            this.btnStoricoCancellazioni.TabIndex = 2;
            this.btnStoricoCancellazioni.Text = "Elenco cancellati";
            this.btnStoricoCancellazioni.UseVisualStyleBackColor = true;
            this.btnStoricoCancellazioni.Click += new System.EventHandler(this.btnStoricoCancellazioni_Click);
            // 
            // btnStoricoAggiornati
            // 
            this.btnStoricoAggiornati.Location = new System.Drawing.Point(302, 78);
            this.btnStoricoAggiornati.Name = "btnStoricoAggiornati";
            this.btnStoricoAggiornati.Size = new System.Drawing.Size(170, 34);
            this.btnStoricoAggiornati.TabIndex = 3;
            this.btnStoricoAggiornati.Text = "Elementi aggiornati";
            this.btnStoricoAggiornati.UseVisualStyleBackColor = true;
            this.btnStoricoAggiornati.Click += new System.EventHandler(this.btnStoricoAggiornati_Click);
            // 
            // txtdata
            // 
            this.txtdata.Location = new System.Drawing.Point(253, 21);
            this.txtdata.Name = "txtdata";
            this.txtdata.Size = new System.Drawing.Size(200, 22);
            this.txtdata.TabIndex = 4;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(558, 438);
            this.Controls.Add(this.txtdata);
            this.Controls.Add(this.btnStoricoAggiornati);
            this.Controls.Add(this.btnStoricoCancellazioni);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnStoricoCancellazioni;
        private System.Windows.Forms.Button btnStoricoAggiornati;
        private System.Windows.Forms.DateTimePicker txtdata;
    }
}

