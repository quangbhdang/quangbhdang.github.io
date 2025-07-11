serve:
	@bundle exec jekyll serve

serve-draft:
	@bundle exec jekyll serve --drafts

sever-draft-incremental:
	@bundle exec jekyll serve --drafts --incremental

cv_to_json:
	@bash scripts/update_cv_json.sh