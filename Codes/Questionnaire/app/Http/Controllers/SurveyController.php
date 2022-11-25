<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SurveyController extends Controller
{
    public function show(\App\Models\Questionnaire $questionnaire, $slug)
    {
        $questionnaire->Load('questions.answers');

        return view('survey.show', compact('questionnaire'));
    }

    public function store()
    {
        $data = request()->validate([
            'responses.*.answer_id' => 'required',
            'responses.*.question_id' => 'required'
        ]);
    }
}
