#include <bits/stdc++.h>
//#include <testlib.h>

using namespace std;

int minNum, maxNum, randomSeed;

int main() {
	cin >> minNum >> maxNum >> randomSeed;
	srand(randomSeed);
	cout << minNum + rand() % (maxNum - minNum + 1) << " " << minNum + rand() % (maxNum - minNum + 1) << endl;
	return 0;
}
