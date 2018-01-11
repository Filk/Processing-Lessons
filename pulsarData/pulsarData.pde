
float [] data;

void setup()
{
  String[] lines = loadStrings("kl99_102.txt");
  
  println("There are " + lines.length + " lines.");
  
  for (int i=0; i<lines.length; i++)
  {
    data[i] = float (split(lines[i], ' '));
  }
  printArray(data);
}

void draw()
{

}