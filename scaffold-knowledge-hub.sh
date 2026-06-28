#!/bin/bash
# scaffold-knowledge-hub-v2.sh

echo "🚀 Starting Knowledge Hub V2 Scaffolding..."

# === SECTION 1: THE WORLD (10 DOMAINS) ===
WORLD_DOMAINS=(
    "corporate-financial|Corporate & Financial Systems|Budgets, audits, financial policies, and corporate governance."
    "economics-wealth|Economics & Wealth|Market trends, wealth distribution, and economic indicators."
    "energy-resources|Energy & Resources|Power generation, oil/gas, renewables, and resource management."
    "environment|Environment|Climate data, sustainability reports, and ecological studies."
    "government-power|Government & Power|Policy documents, legislative updates, and administrative structures."
    "housing-infrastructure|Housing & Infrastructure|Urban planning, real estate stats, and public works."
    "labor-work|Labor & Work|Employment trends, labor laws, and workforce statistics."
    "media-information-systems|Media & Information Systems|Content pipelines, media archives, and infosec."
    "religion-belief-systems|Religion & Belief Systems|Faith-based resources, philosophical texts, and cultural studies."
    "war-security|War & Security|Defense strategies, conflict reports, and security analysis."
)

# === SECTION 2: THE WORDS (5 CONCEPTS) ===
WORDS_CONCEPTS=(
    "time|Time|Temporal awareness and the nature of duration."
    "causality|Causality|Understanding cause-effect relationships in systems."
    "impermanence|Impermanence|Recognizing flux and transience."
    "change|Change|Patterns of transformation across domains."
    "simplicity|Simplicity|Essentialist thinking and reduction principles."
)

BASE_DIR="public"
SHARED_DIR="$BASE_DIR/shared/css"

# === CREATE BASE STRUCTURE ===
mkdir -p "$SHARED_DIR"

# Create main section folders
mkdir -p "$BASE_DIR/world"
mkdir -p "$BASE_DIR/words"
mkdir -p "$BASE_DIR/you/{guides,frameworks}"
mkdir -p "$BASE_DIR/commonwealth/{constitution,institutions,proposals}"
mkdir -p "$BASE_DIR/io-reports/{reports,analysis}"

# === CREATIVE SHARED CSS ===
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
.card-badge { display: inline-block; background: #e3f2fd; color: #0056b3; padding: 4px 10px; border-radius: 15px; font-size: 0.75em; margin-bottom: 8px; }
footer { margin-top: 50px; text-align: center; color: #888; font-size: 0.8em; border-top: 1px solid #eee; padding-top: 25px; }
.taglist { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 15px; }
.tag { background: #f0f0f0; padding: 5px 12px; border-radius: 15px; font-size: 0.8em; color: #555; }
EOF

# === MAIN INDEX.HTML (Gateway Page) ===
cat > "$BASE_DIR/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Knowledge Hub | Gateway</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <h1>Knowledge Hub</h1>
    <p>A structured exploration of society, philosophy, and alternative futures.</p>
    
    <div class="section-header">
        <strong>Welcome</strong> — Select a branch below to begin exploring.
    </div>

    <div class="grid">
        <a href="/world/" class="card">
            <span class="badge">🌍</span><br>
            <h3>The World</h3>
            <p>Ten domains of societal knowledge. Explore finance, energy, government, media, and more.</p>
        </a>

        <a href="/words/" class="card">
            <span class="badge">💭</span><br>
            <h3>The Words</h3>
            <p>Five philosophical lenses: Time, Causality, Impermanence, Change, Simplicity.</p>
        </a>

        <a href="/you/" class="card">
            <span class="badge">🧑</span><br>
            <h3>The You</h3>
            <p>How to navigate these domains without losing your mind. Practical navigation guides.</p>
        </a>

        <a href="/commonwealth/" class="card">
            <span class="badge">⚖️</span><br>
            <h3>The Commonwealth</h3>
            <p>Framework for an alternative system of governance and social organization.</p>
        </a>

        <a href="/io-reports/" class="card">
            <span class="badge">📊</span><br>
            <h3>IO Reports</h3>
            <p>Field observations, reports, and analysis compiled from the frontier.</p>
        </a>
    </div>

    <footer>Powered by Cloudflare Pages | Hosted on Ubuntu • Build v2</footer>
</body>
</html>
EOF

# === THE WORLD OVERVIEW PAGE ===
cat > "$BASE_DIR/world/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The World | Knowledge Hub</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The World</h1>
    <p>These ten domains encompass the major pillars of human civilization and societal organization.</p>

    <div class="grid">
EOF

for ENTRY in "${WORLD_DOMAINS[@]}"; do
    IFS="|" read -r SLUG TITLE DESC <<< "$ENTRY"
    cat >> "$BASE_DIR/world/index.html" << EOF
        <a href="/$SLUG/" class="card">
            <h3>$TITLE</h3>
            <p>$DESC</p>
        </a>
EOF
done

cat >> "$BASE_DIR/world/index.html" << 'EOF'
    </div>
    <footer>Back to Top | Powered by Cloudflare Pages</footer>
</body>
</html>
EOF

# === CREATE EACH WORLD DOMAIN SUB-FOLDER WITH TEMPLATE ===
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
    <title>$TITLE | Knowledge Hub</title>
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
    <title>The Words | Knowledge Hub</title>
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
        <a href="/$SLUG/" class="card">
            <h3>$TITLE</h3>
            <p>$DESC</p>
        </a>
EOF
done

cat >> "$BASE_DIR/words/index.html" << 'EOF'
    </div>
    <footer>Back to Top | Powered by Cloudflare Pages</footer>
</body>
</html>
EOF

# === CREATE EACH WORD FOLDER ===
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
    <title>$TITLE | Knowledge Hub</title>
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

# === THE YOU PAGE ===
cat > "$BASE_DIR/you/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The You | Knowledge Hub</title>
    <link rel="stylesheet" href="/shared/css/style.css">
</head>
<body>
    <nav><a href="/">← Back to Gateway</a></nav>
    <h1>The You</h1>
    <p>Navigation guidance for making sense of complexity without drowning in it.</p>

    <section>
        <h2>🗺️ Navigation Guides</h2>
        <p>Detailed walkthroughs for traversing related domains.</p>
        <ul>
            <li><a href="/you/guides/">View All Pathways →</a></li>
        </ul>
    </section>

    <section>
        <h2>🔬 Frameworks</h2>
        <p>Synthesis methodologies and analytical tools.</p>
        <ul>
            <li><a href="/you/frameworks/">Browse Frameworks →</a></li>
        </ul>
    </section>

    <footer>Back to Top</footer>
</body>
</html>
EOF

echo "✅ Created: you/ directory"

# === THE COMMONWEALTH PAGE ===
cat > "$BASE_DIR/commonwealth/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Commonwealth | Knowledge Hub</title>
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

echo "✅ Created: commonwealth/ directory"

# === IO REPORTS PAGE ===
cat > "$BASE_DIR/io-reports/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IO Reports | Knowledge Hub</title>
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

echo "✅ Created: io-reports/ directory"

# === FINAL SUMMARY ===
echo ""
echo "=============================================="
echo "✅ SCHEMATICS COMPLETE!"
echo "=============================================="
echo ""
echo "Structure created:"
ls -la "$BASE_DIR"
echo ""
echo "Next steps:"
echo "1. Copy your actual content files into the relevant subfolders"
echo "2. Run the Auto-Listing Generator (ask Lumo!)"
echo "3. Git commit -> Push to GitHub"
echo "4. Connect to Cloudflare Pages"
echo ""
echo "Enjoy building your universe. 🌌"
