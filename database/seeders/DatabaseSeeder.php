<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $user = User::factory()->create([
            'email' => 'demo@test.com',
            'password' => bcrypt('password'),
            'name' => 'Demo User',
        ]);

       $this->callWith(BoardSeeder::class, [ 'userId' => $user->id ]);
    }
}
