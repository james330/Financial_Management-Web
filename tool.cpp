#include<iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

using namespace std;
int *sta;
int *nst;
int *que;
int *qu1;
int ti;
int t;
int qq;
int q;
int qqu1;
int u1;


int combination(int n ,int m){ //C n�� m 
	int cn=1 ,cm1=1 ,cm2=1;
	for(int i=n ;i>0 ;i--){
		cn*=i;
	}
	for(int i=m ;i>0 ;i--){
		cm1*=i;
	}
	for(int i=(n-m) ;i>0 ;i--){
		cm2*=i;
	}
	return cn/(cm1*cm2);
}

void stack_in(int n){ //���|_��J�@�Ӥ��� 
	sta[ti] = n;
	nst[t] = n;
	ti++;
	t++;
}

int stack_out(){ //���|_��X�@�Ӥ��� 
	ti--;
	return sta[0];
}

bool stack_check(int num ,int n){ //���|_�P�_�Ӥ����O�_�s�b 
	for(int i=0 ;i<num ;){
		if(sta[i] == n){
			return 1;
		}
		else{
			i++;
		}
	}
	return 0; 
}

void print_stack(){ //���|_�q0~num 
	for(int i=0 ;i<t ;i++){
		cout<<nst[i]<<"->";
	}
	cout<<endl;
}

void queue_in(int num ,int n){ //(�`��)��Cque_��J�@�Ӥ��� 
	que[qq] = n;
	qq++;
	if(qq == num)
		qq=0;	
	
}

void que_insert(int num ,int n){ //(�`��)��Cqu1_��J�@�Ӥ��� 
	qu1[qqu1] = n;
	qqu1++;
	if(qqu1 == num)
		qqu1 = 0;
}

int que_end(int num){ 
	u1++;
	if(u1 == num)
		u1 = 0;
	return qu1[u1-1];
}

int que_find(int num ,int j){
	for(int i=0 ;i<num ;i++){
		if(qu1[i] == j)
			return j;
	}
	return -1;
}

int queue_out(int num){
	q++;
	if(q == num)
		q=0;
	return que[q-1];
}

bool queue_check(int num ,int n){
	for(int i=0 ;i<num ;){
		if(que[i] == n){
			return 1;
		}
		else{
			i++;
		}
	}
	return 0;
}

bool queue_empty(){
	if(qq == q)return 0;// is empty
	else
		return 1;// not empty;
}
int queue_front(){
	int q2 = q;
	return que[q2];
}

