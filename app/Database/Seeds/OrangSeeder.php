<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;

class OrangSeeder extends \CodeIgniter\Database\Seeder
{
    # Masukkan data ke dalam table
    public function run()
    {
        // $data = [
        //     [
        //         'nama'          => 'Aaaaaaa',
        //         'alamat'        => 'Jl. aaaaa no 111',
        //         'created_at'    => Time::now(),
        //         'updated_at'    => Time::now()
        //     ],
        //     [
        //         'nama'          => 'Bbbbbbb',
        //         'alamat'        => 'Jl. bbbb no 222',
        //         'created_at'    => Time::now(),
        //         'updated_at'    => Time::now()
        //     ],
        //     [
        //         'nama'          => 'Ccccccc',
        //         'alamat'        => 'Jl. cccc no 333',
        //         'created_at'    => Time::now(),
        //         'updated_at'    => Time::now()
        //     ],
        // ];

        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 100; $i++) {
            # code...
            $data = [
                [
                    'nama'  => $faker->name,
                    'email'  => $faker->email,
                    'alamat'  => $faker->address,
                    'created_at' => Time::createFromTimestamp($faker->unixTime()),
                    'updated_at' => Time::createFromTimestamp($faker->unixTime())
                ]
            ];
            $this->db->table('orang')->insertBatch($data);
        }

        // Simple Queries
        // $this->db->query(
        //     "INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)",
        //     $data
        // );

        // Using Query Builder
        // $this->db->table('orang')->insert($data);
    }
}
