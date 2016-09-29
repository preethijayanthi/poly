class Electronicdevices
{
	void operation()
	{
	System.out.println("The devices can used to hear,see films,etc...");
	}
}
class Radio extends Electronicdevices
{	
	void operation()
	{
	System.out.println("This device can used to hear songs");
	}
}
class TV extends Electronicdevices
{
	void operation()
	{
	System.out.println("This device can used to see film");
	}
}
class Dyanamic
{
public static void main(String ar[])
{
Electronicdevices e=new Radio();
e.operation();
Electronicdevices f=new Radio();
f.operation();
}
}

		