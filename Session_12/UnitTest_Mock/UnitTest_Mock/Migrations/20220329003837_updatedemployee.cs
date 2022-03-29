using Microsoft.EntityFrameworkCore.Migrations;

namespace UnitTest_Mock.Migrations
{
    public partial class updatedemployee : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "alamat",
                table: "Employees");

            migrationBuilder.RenameColumn(
                name: "nama",
                table: "Employees",
                newName: "Name");

            migrationBuilder.RenameColumn(
                name: "jenisKelamin",
                table: "Employees",
                newName: "Designation");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "Employees",
                newName: "nama");

            migrationBuilder.RenameColumn(
                name: "Designation",
                table: "Employees",
                newName: "jenisKelamin");

            migrationBuilder.AddColumn<string>(
                name: "alamat",
                table: "Employees",
                type: "TEXT",
                nullable: true);
        }
    }
}
