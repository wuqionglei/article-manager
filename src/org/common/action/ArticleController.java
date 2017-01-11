package org.common.action;

import javax.annotation.Resource;

import org.common.model.Article;
import org.common.service.IArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller											//将一个POJO类声明为处理器
@RequestMapping("/article")				//请求到处理器功能方法的映射规则
public class ArticleController {
	private IArticleService articleService;

	public IArticleService getArticleService() {
		return articleService;
	}
	
	@Resource
	public void setArticleService(IArticleService articleService) {
		this.articleService = articleService;
	}

	@RequestMapping(value={"/articles"},method=RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("pagers", articleService.find());	//使用Model从Controller给视图传值
		return "article/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute(new Article());
		return "article/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(@Validated Article article,BindingResult br) {
		if(br.hasErrors()) {
			return "article/add";
		}
		articleService.add(article);
		return "redirect:/article/articles";
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public String show(@PathVariable int id,Model model) {
		model.addAttribute(articleService.load(id));
		return "article/show";
	}
	
	@RequestMapping(value="/{id}/update",method=RequestMethod.GET)
	public String update(@PathVariable int id,Model model) {
		model.addAttribute(articleService.load(id));
		return "article/update";
	}
	
	@RequestMapping(value="/{id}/update",method=RequestMethod.POST)
	public String update(@PathVariable int id,@Validated Article article,BindingResult br,Model model) {
		if(br.hasErrors()) {
			return "article/update";
		}
		Article tu = articleService.load(id);
		tu.setTitle(article.getTitle());
		tu.setUrl(article.getUrl());
		tu.setLabel(article.getLabel());
		articleService.update(tu);
		return "redirect:/article/articles";
	}
	
	@RequestMapping(value="/{id}/delete",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		articleService.delete(id);
		return "redirect:/article/articles";
	}
}
