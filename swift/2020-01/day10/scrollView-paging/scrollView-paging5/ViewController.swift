//
//  ViewController.swift
//  scrollView-paging5
//
//  Created by Mac mini on 2020/01/10.
//  Copyright © 2020 Mac mini. All rights reserved.
//
/*
 [ 과제 ]
 1.
 UIScrollView 에 UIPageControl을 사용하여 현재 페이지를 표시하는 화면 만들기 (별도 이미지 참고)
 힌트
 - UIScrollView: Delegate 이용(scroll 관련),  pagingEnabled 속성 참고
 - UIPageControl: currentPage 속성 및 numberOfPages 속성 참고
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // scrollView 위에 PageControl을 올려서 사용하는 것!
        // 사실 PageControl은 화면을 넘겨주지 않아 그냥 아래 흰 점 색만 바꿔줄 뿐!
        // 흰 점이 바뀌는 타이밍을 contentOffset.x의 위치를 통해서 알려줘야함
        // scroll되면서 해당 위치에 따라 page를 표시해 줌
        // scrollView.contentOffset.x : 전체 컨텐츠의 크기 중 화면(safe area) 가장 왼쪽 상단의 위치
        // UIScreen.main.bounds.width : 화면(safe area)의 width크기
        
        pageControl.currentPage = Int(floor(scrollView.contentOffset.x / UIScreen.main.bounds.width))
        
        print("currentPage=", Int(floor(scrollView.contentOffset.x / UIScreen.main.bounds.width)))
        print("scrollView.contentOffset.x:", scrollView.contentOffset.x)
        print("UIScreen.main.bounds.width", UIScreen.main.bounds.width)
    }
}

