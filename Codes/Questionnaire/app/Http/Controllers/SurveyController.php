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

    public function store(\App\Models\Questionnaire $questionnaire)
    {
        $data = request()->validate([
            'responses.*.answer_id' => 'required',
            'responses.*.question_id' => 'required',
            'survey.name' => 'required',
            'survey.email' => 'required|email',
        ]);

        $survey = $questionnaire->surveys()->create($data['survey']);
        $survey->responses()->createMany($data['responses']);

        return "<div>Thank you!<a href='/home'><br>Back to home page</a></div>";
    }
}
?>
