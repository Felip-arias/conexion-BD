Imports MySql.Data.MySqlClient

Public Class Empleados

    Private Sub conectarSQL(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim con As MySqlConnection
        con = New MySqlConnection("Host=127.0.0.1; Port=3307; database=floristeria; User =root; password=123456789")
        Try
            con.Open()
            Dim cmd As New MySqlCommand("select nombre,apellido1,apellido2,email,puesto from empleado", con)
            Dim drd As MySqlDataReader
            drd = cmd.ExecuteReader
            Dim bs As New BindingSource
            bs.DataSource = drd
            DataGridView1.DataSource = bs


        Catch ex As Exception

            MsgBox(ex.Message)

        End Try
        con.Close()

    End Sub

    Private Sub SalirToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Me.Hide()
    End Sub

    Private Sub InicioToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Form1.Show()
        Me.Hide()
    End Sub

    Private Sub SalirToolStripMenuItem_Click_1(sender As Object, e As EventArgs)
        Me.Hide()
    End Sub

    Private Sub ClientesToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Clientes.Show()
        Me.Hide()
    End Sub

    Private Sub ProductosToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Productos.Show()
        Me.Hide()
    End Sub

    Private Sub PedidosToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Pedidos.Show()
        Me.Hide()
    End Sub

    Private Sub PagoToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Pagos.Show()
        Me.Hide()
    End Sub

    Private Sub ClientesToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles ClientesToolStripMenuItem.Click
        Clientes.Show()
        Me.Hide()
    End Sub

    Private Sub InicioToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles InicioToolStripMenuItem.Click
        Form1.Show()
        Me.Hide()
    End Sub

    Private Sub ProductosToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles ProductosToolStripMenuItem.Click
        Productos.Show()
        Me.Hide()
    End Sub

    Private Sub PedidosToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles PedidosToolStripMenuItem.Click
        Pedidos.Show()
        Me.Hide()
    End Sub

    Private Sub PagoToolStripMenuItem_Click_1(sender As Object, e As EventArgs) Handles PagoToolStripMenuItem.Click
        Pagos.Show()
        Me.Hide()
    End Sub

    Private Sub SalirToolStripMenuItem_Click_2(sender As Object, e As EventArgs) Handles SalirToolStripMenuItem.Click
        Me.Hide()
    End Sub
End Class