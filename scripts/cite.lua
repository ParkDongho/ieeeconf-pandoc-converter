function Cite(elem)
  -- Replace \autocite with \cite and handle multiple citations
  local citations = {}
  for i, citation in ipairs(elem.citations) do
    table.insert(citations, citation.id)
  end
  local citation_str = table.concat(citations, ', ')
  return pandoc.RawInline('latex', '\\cite{' .. citation_str .. '}')
end
