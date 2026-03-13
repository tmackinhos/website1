const SUPABASE_URL = "YOUR_SUPABASE_URL"
const SUPABASE_KEY = "YOUR_PUBLIC_KEY"

const supabase = supabase.createClient(SUPABASE_URL, SUPABASE_KEY)

async function signUp(email,password){

let { data, error } = await supabase.auth.signUp({
email:email,
password:password
})

alert("Account created")

}

async function login(email,password){

let { data, error } = await supabase.auth.signInWithPassword({
email:email,
password:password
})

window.location="dashboard.html"

}
