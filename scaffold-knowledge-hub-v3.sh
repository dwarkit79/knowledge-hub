#!/bin/bash
# scaffold-knowledge-hub-v3.sh
# Updated: 11 domains, Body/Mind/Soul, Disclaimers page

echo "🚀 Starting Knowledge Hub V3 Scaffolding..."

# === SECTION 1: THE WORLD (11 DOMAINS) ===
WORLD_DOMAINS=(
    "corporations-finance|Corporations & Finance|Corporate structures, financial systems, banking, and monetary policy."
    "economics-wealth|Economics & Wealth|Market dynamics, wealth distribution, trade, and economic indicators."
    "energy-resources|Energy & Resources|Power generation, fossil fuels, renewables, mining, and resource management."
    "health-wellbeing|Health & Well-Being|Public health, healthcare systems, nutrition, and mental wellness."
    "governance-power|Governance & Power|Political structures, policy, authority, and institutional influence."
    "housing-infrastructure|Housing & Infrastructure|Urban planning, real estate, transportation, and public works."
    "labor-employment|Labor & Employment|Workforce trends, labor rights, wages, and employment policy."
    "media-information|Media & Information|News ecosystems, content production, data flows, and information control."
    "faith-belief|Faith & Belief|Religion, ideology, philosophy, worldview formation, and spiritual traditions."
    "technology-digital-life|Technology & Digital Life|Digital infrastructure, innovation, privacy, and tech's societal impact."
    "conflict-security|Conflict & Security|War, defense, intelligence, cybersecurity, and civil unrest."
)

# === SECTION 2: THE WORDS (5 CONCEPTS) ===
WORDS_CONCEPTS=(
    "time|Time|Temporal awareness and the nature of duration."
    "causality|Causality|Understanding cause-effect relationships in systems."
    "impermanence|Impermanence|Recognizing flux, transience, and the temporary nature of all things."
    "change|Change|Patterns of transformation across domains and epochs."
    "simplicity|Simplicity|Essentialist thinking, reduction principles, and clarity through subtraction."
)

# === SECTION 3: THE YOU (BODY / MIND / SOUL) ===
YOU_SECTIONS=(
    "body|Body|Physical health, nutrition, movement, and biological realities."
    "mind|Mind|Cognition, perception, reasoning, and mental well-being."
    "soul|Soul|Spiritual inquiry, purpose, meaning, and inner development."
)

BASE_DIR="public"
SHARED_DIR="$BASE_DIR/shared/css"

# === CREATE BASE STRUCTURE ===
mkdir -p "$SHARED_DIR"
mkdir -p "$BASE_DIR/disclaimers-definitions"
mkdir -p "$BASE_DIR/world"
mkdir -p "$BASE_DIR/words"
mkdir -p "$BASE_DIR/you"
mkdir -p "$BASE_DIR/commonwealth/{constitution,institutions,proposals}"
mkdir -p "$BASE_DIR/io-reports/{reports,analysis}"

# === SHARED CSS ===
cat > "$SHARED_DIR/style.css" << 'EOF'
body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; max-width: 1100px; margin: 0 auto; padding: 40px 20px; line-height: 1.6; color: #333; background: linear-gradient(180deg, #fafafa 0%, #ffffff 100%); }
nav { margin-bottom: 30px; border-bottom: 1px solid #eee; padding-bottom: 10px; }
nav a { text-decoration: none; color: #0056b3; font-weight: bold; }
h1 { color: #2c3e50; border-bottom: 3px solid #00d7ff; padding-bottom: 12px; font-size: 2em; }
h2 { color: #444; font-size: 1.4em; margin-top: 30px; }
.section-header { background: #f0f8ff; padding: 15px; border-radius: 8px; margin-bottom: 20px; border-left: 5px solid #00d7ff; }
section { margin-bottom: 30px; background: white; padding: 25px; border-radius: 10px; box-shadow: 0 3px 8px rgba(0,0,0,0.08); }
ul { list-style-type: none; padding: 0; }
li { border-bottom: 1px solid #eee; padding: 10px 0; }
li:last-child { border-bottom: none; }
a.file-link { text-decoration: none; color: #333; display: flex; align-items: center; }
a.file-link:hover { color: #0056b3; text-decoration: underline; }
.icon { margin-right: 10px; width: 22px; text-align: center; font-size: 1.2em; }
.grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 20px; }
.card { background: white; border: 1px solid #ddd; border-radius: 10px; padding: 22px; text-decoration: none; color: inherit; transition: transform 0.2s, box-shadow 0.2s; }
.card:hover { transform: translateY(-4px); box-shadow: 0 8px 20px rgba(0,0,0,0.12); }
.card h3 { margin: 0 0 12px 0; color: #0056b3; font-size: 1.1em; }
.card p { margin: 0; color: #666; font-size: 0.9em; line-height: 1.5; }
footer { margin-top: 50px; text-align: center; color: #888; font-size: 0.8em; border-top: 1px solid #eee; padding-top: 25px; }
.disclaimer-box { background: #fff3cd; border: 1px solid #ffeaa7; border-radius: 8px; padding: 15px 20px; margin-bottom: 30px; }
.disclaimer-box p { margin: 0; color: #856404; font-size: 0.9em; }
EOF

# === MAIN INDEX.HTML (Gateway Page) ===
cat > "$BASE_DIR/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sane Perspectives | Knowledge Hub</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <h1>Sane Perspectives</h1>
    <p>A collection of observations, evidence, and conclusions about life, society, and change.</p>

    <div class="disclaimer-box">
        <p>⚠️ <strong>Before exploring:</strong> Please read the <a href="/disclaimers-definitions/">Disclaimers & Definitions</a> to avoid assumptions and misunderstandings.</p>
    </div>

    <div class="section-header">
        <strong>Welcome</strong> — Select a branch below to begin exploring.
    </div>

    <div class="grid">
        <a href="/world/" class="card">
            <h3>🌍 The World</h3>
            <p>Eleven domains of societal knowledge. Explore finance, governance, media, technology, and more.</p>
        </a>

        <a href="/words/" class="card">
            <h3>💭 The Words</h3>
            <p>Five philosophical lenses: Time, Causality, Impermanence, Change, Simplicity.</p>
        </a>

        <a href="/you/" class="card">
            <h3>🧑 The You</h3>
            <p>Navigating complexity through Body, Mind, and Soul. Practical guidance for sane living.</p>
        </a>

        <a href="/commonwealth/" class="card">
            <h3>⚖️ The Commonwealth</h3>
            <p>Framework for an alternative system of governance and social organization.</p>
        </a>

        <a href="/io-reports/" class="card">
            <h3>📊 IO Reports</h3>
            <p>Field observations, intelligence compilations, and analysis from active deployment zones.</p>
        </a>
    </div>

    <footer>SanePerspectives.com | Powered by Cloudflare Pages | Hosted on Ubuntu</footer>
</body>
</html>
EOF

# === DISCLAIMERS & DEFINITIONS PAGE ===
cat > "$BASE_DIR/disclaimers-definitions/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disclaimers & Definitions | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>Disclaimers & Definitions</h1>
    <p>To avoid assumptions and misunderstandings, please review the following before reading any section.</p>

    <section>
        <h2>📝 Disclaimers</h2>
        <ul>
            <li><i>Add disclaimer content here.</i></li>
        </ul>
    </section>

    <section>
        <h2>📖 Key Definitions</h2>
        <ul>
            <li><i>Add definition content here.</i></li>
        </ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF

echo "✅ Created: disclaimers-definitions/"

# === THE WORLD OVERVIEW PAGE ===
cat > "$BASE_DIR/world/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The World | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The World</h1>
    <p>These eleven domains encompass the major pillars of human civilization and societal organization.</p>

    <div class="grid">
EOF

for ENTRY in "${WORLD_DOMAINS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    cat >> "$BASE_DIR/world/index.html" << EOF
        <a href="/world/$SLUG/" class="card">
            <h3>$TITLE</h3>
            <p>$DESC</p>
        </a>
EOF
done

cat >> "$BASE_DIR/world/index.html" << 'EOF'
    </div>
    <footer>Back to Top | SanePerspectives.com</footer>
</body>
</html>
EOF

# === CREATE EACH WORLD DOMAIN ===
for ENTRY in "${WORLD_DOMAINS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    
    DOMAIN_PATH="$BASE_DIR/world/$SLUG"
    mkdir -p "$DOMAIN_PATH/{docs,slides,data}"
    
    cat > "$DOMAIN_PATH/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$TITLE | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/world/">← Back to The World</a> | <a href="/">Gateway</a></nav>
    <h1>$TITLE</h1>
    <p>$DESC</p>

    <section>
        <h2>📄 Documents</h2>
        <ul>
            <li><span class="icon">📄</span> <i>No documents yet. Drop PDF/DOCX files in the 'docs' folder.</i></li>
        </ul>
    </section>

    <section>
        <h2>📊 Slide Decks</h2>
        <ul>
            <li><span class="icon">📊</span> <i>No slides yet. Drop PPTX/PDF files in the 'slides' folder.</i></li>
        </ul>
    </section>

    <section>
        <h2>📈 Data & Tables</h2>
        <ul>
            <li><span class="icon">📈</span> <i>No data yet. Drop CSV/JSON files in the 'data' folder.</i></li>
        </ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF
    echo "✅ Created domain: $SLUG ($TITLE)"
done

# === THE WORDS OVERVIEW PAGE ===
cat > "$BASE_DIR/words/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Words | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The Words</h1>
    <p>Five foundational concepts for understanding reality through a philosophical lens.</p>

    <div class="grid">
EOF

for ENTRY in "${WORDS_CONCEPTS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    cat >> "$BASE_DIR/words/index.html" << EOF
        <a href="/words/$SLUG/" class="card">
            <h3>$TITLE</h3>
            <p>$DESC</p>
        </a>
EOF
done

cat >> "$BASE_DIR/words/index.html" << 'EOF'
    </div>
    <footer>Back to Top | SanePerspectives.com</footer>
</body>
</html>
EOF

# === CREATE EACH WORD CONCEPT ===
for ENTRY in "${WORDS_CONCEPTS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    
    WORD_PATH="$BASE_DIR/words/$SLUG"
    mkdir -p "$WORD_PATH/{essays,notes,references}"
    
    cat > "$WORD_PATH/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$TITLE | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/words/">← Back to The Words</a> | <a href="/">Gateway</a></nav>
    <h1>$TITLE</h1>
    <p>$DESC</p>

    <section>
        <h2>✍️ Essays & Notes</h2>
        <ul>
            <li><span class="icon">📝</span> <i>No essays yet. Drop markdown/text files here.</i></li>
        </ul>
    </section>

    <section>
        <h2>📚 References</h2>
        <ul>
            <li><span class="icon">📖</span> <i>No references yet.</i></li>
        </ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF
    echo "✅ Created concept: $SLUG ($TITLE)"
done

# === THE YOU OVERVIEW PAGE ===
cat > "$BASE_DIR/you/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The You | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The You</h1>
    <p>How to navigate these domains in a sane way — through Body, Mind, and Soul.</p>

    <div class="grid">
EOF

for ENTRY in "${YOU_SECTIONS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    cat >> "$BASE_DIR/you/index.html" << EOF
        <a href="/you/$SLUG/" class="card">
            <h3>$TITLE</h3>
            <p>$DESC</p>
        </a>
EOF
done

cat >> "$BASE_DIR/you/index.html" << 'EOF'
    </div>
    <footer>Back to Top | SanePerspectives.com</footer>
</body>
</html>
EOF

# === CREATE EACH YOU SECTION ===
for ENTRY in "${YOU_SECTIONS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    
    YOU_PATH="$BASE_DIR/you/$SLUG"
    mkdir -p "$YOU_PATH/{docs,notes,practices}"
    
    cat > "$YOU_PATH/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$TITLE | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/you/">← Back to The You</a> | <a href="/">Gateway</a></nav>
    <h1>$TITLE</h1>
    <p>$DESC</p>

    <section>
        <h2>📄 Documents & Readings</h2>
        <ul>
            <li><span class="icon">📄</span> <i>No documents yet.</i></li>
        </ul>
    </section>

    <section>
        <h2>📝 Notes & Reflections</h2>
        <ul>
            <li><span class="icon">📝</span> <i>No notes yet.</i></li>
        </ul>
    </section>

    <section>
        <h2>🧘 Practices & Exercises</h2>
        <ul>
            <li><span class="icon">🧘</span> <i>No practices yet.</i></li>
        </ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF
    echo "✅ Created you-section: $SLUG ($TITLE)"
done

# === THE COMMONWEALTH PAGE ===
cat > "$BASE_DIR/commonwealth/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Commonwealth | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The Commonwealth</h1>
    <p>An alternative framework for governance, citizenship, and collective self-management.</p>

    <section>
        <h2>🏛️ Constitution</h2>
        <p>Draft governing documents and fundamental principles.</p>
        <ul><li><a href="/commonwealth/constitution/">Explore Constitutional Proposals →</a></li></ul>
    </section>

    <section>
        <h2>🏢 Institutions</h2>
        <p>Proposed bodies, councils, and organizational structures.</p>
        <ul><li><a href="/commonwealth/institutions/">Review Institutional Designs →</a></li></ul>
    </section>

    <section>
        <h2>📋 Proposals</h2>
        <p>Specific policy drafts and reform initiatives.</p>
        <ul><li><a href="/commonwealth/proposals/">Read Policy Proposals →</a></li></ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF

echo "✅ Created: commonwealth/"

# === IO REPORTS PAGE ===
cat > "$BASE_DIR/io-reports/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IO Reports | Sane Perspectives</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>IO Reports</h1>
    <p>Field observations, intelligence compilations, and analysis from active deployment zones.</p>

    <section>
        <h2>📡 Field Reports</h2>
        <p>Individual mission logs and situational assessments.</p>
        <ul><li><a href="/io-reports/reports/">Browse Reports →</a></li></ul>
    </section>

    <section>
        <h2>📊 Analysis</h2>
        <p>Compiled insights and synthesized findings.</p>
        <ul><li><a href="/io-reports/analysis/">View Analysis Archive →</a></li></ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF

echo "✅ Created: io-reports/"

# === FINAL SUMMARY ===
echo ""
echo "=============================================="
echo "✅ V3 SCHEMATICS COMPLETE!"
echo "=============================================="
echo ""
echo "Structure:"
echo "  • Gateway page (with disclaimer notice)"
echo "  • Disclaimers & Definitions page"
echo "  • The World — 11 domains (docs/slides/data each)"
echo "  • The Words — 5 concepts (essays/notes/references each)"
echo "  • The You — Body/Mind/Soul (docs/notes/practices each)"
echo "  • The Commonwealth — constitution/institutions/proposals"
echo "  • IO Reports — reports/analysis"
echo ""
echo "Next steps:"
echo "1. Copy content into relevant folders"
echo "2. Run Auto-Listing Generator"
echo "3. Git commit & push to deploy"
