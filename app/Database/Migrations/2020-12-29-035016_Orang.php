<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Orang extends Migration
{
	# Buat table di database
	public function up()
	{
		$this->forge->addField([
			'id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'nama'        => [
				'type'           => 'VARCHAR',
				'constraint'     => '256',
			],
			'email' 	  => [
				'type'           => 'VARCHAR',
				'constraint'     => '256',
			],
			'alamat'        => [
				'type'           => 'VARCHAR',
				'constraint'     => '256',
			],
			'created_at'  => [
				'type' 			 => 'DATETIME',
				'null'			 => true
			],
			'updated_at'  => [
				'type' 			 => 'DATETIME',
				'null'			 => true
			]
		]);
		$this->forge->addKey('id', true);
		$this->forge->createTable('orang');
	}

	public function down()
	{
		$this->forge->dropTable('orang');
	}
}
