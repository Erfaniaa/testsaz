#include <bits/stdc++.h>
//#include <testlib.h>

using namespace std;

int minNum, maxNum;

int main() {
	srand(time(0));
	cin >> minNum >> maxNum;
	cout << minNum + rand() % (maxNum - minNum + 1) << " " << minNum + rand() % (maxNum - minNum + 1) << endl;
	return 0;
}
