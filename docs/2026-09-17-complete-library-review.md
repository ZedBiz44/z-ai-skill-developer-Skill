# ZedBiz Skill Audit — Cody's Complete Readiness Review

Date: 2026-09-17 (Mountain Time) | Reviewer: Cody | Status: Review complete; audit needs correction before blanket implementation

## Verdict for Jack

**Do not hand the current audit to an AI with instructions to implement everything.** It contains worthwhile ideas, but it also lists completed features as missing, misdescribes some skills, and proposes changes that could remove useful work.

An AI can carry out the genuine improvements. Give it the bounded work list below, with the existing functions preserved. This is a source-and-plan review, not approval to rewrite the library, migrate knowledge, change providers, or deploy across the fleet.

The previous Asana/source corrections remain valid. My earlier review was too narrow to approve the wider plan. This review covers every repository named in that plan.

Source: [ZedBiz Z Skills — ChatGPT Library & Improvement Audit](https://app.notion.com/p/ZedBiz-Z-Skills-ChatGPT-Library-Improvement-Audit-3dea3e33d58181a199eede3c0684ce2c).

## What must change in the audit

### Stop assigning work that is already done

The audit's lower tables still say to add features found in current source. Examples:

- Asana procedures already link to routine/advanced control, check recipient access, assign only after preparation, and preserve/reconcile reports that could not be posted.
- Small Bite already defines native checkpoints and says a skill cannot create a future wake-up by itself.
- Biz Plan already supports an ordinary useful draft without requiring an existing governed Brief.
- Notion publishing already has the native connector and missing-allocator draft fallback.
- Website analysis/critique already cover mobile, forms, accessibility foundations and SEO.
- Audio already checks tool availability and requires voice consent.
- Graphics and website production already separate portable workflow from platform mechanics.

Change those entries to **Already present in source; verify through use**. Installation, source inspection and a successful live assignment remain different statuses.

### Preserve the existing knowledge jobs

The proposed simplified chain is not an adequate replacement specification.

- **z-record-knowledge** does more than decide whether something deserves saving. It also coordinates research, source preservation, synthesis and verified records.
- **z-wiki-research** works with a maintained wiki and its update process. A Notion research tool does not automatically replace that wiki.
- **z-agent-knowledge-mapper** already defines its map, coverage, maintenance and retrieval checks.
- **z-support-doc-ingestion** has a specific VPS1 shared Memory Wiki job, including compilation and retrieval checks.

Keep those responsibilities. Consolidation or retirement requires a separately approved replacement showing where every existing responsibility goes and proving the intended assistant can retrieve and use the result. There is no demonstrated need in this audit to create another memory service or move knowledge to ChatGPT Library.

### Describe actual capabilities, not blanket platform labels

- WordPress and health-report skills already mention **Hermes as well as OpenClaw**.
- The Z-Code skill already ships Python and Node clients for an existing allocator. A supported command route may be sufficient on a capable host; another connector is not automatically necessary.
- “Do not install as-is in ChatGPT” must not mean “delete it from servers” or “Cody can never operate it.”
- A production skill may help prepare a brief when generation is unavailable. It must not claim to have generated, inspected or delivered media without the relevant tools.
- Audit and draft work on OpenClaw instructions can be available without granting deployment authority. The audit currently mixes whole-skill explicit invocation with deployment-only authorization.
- Keep the chosen website builder, including WordPress or GoHighLevel. The presence of Sites does not authorize moving a project there.

State capabilities separately for the particular ChatGPT session, Cody installation, OpenClaw agent or Hermes agent. A configured connector is not proof of every action.

### Make shortening preserve the business rules

Moving detail into linked references is reasonable, especially for communication and files/folders. It must not remove:

- approved voices, scripts and narration masters;
- file-retention and copy-verification requirements;
- account and project boundaries;
- rights, cost and publishing authority;
- final-file inspection and confirmed delivery;
- recovery after an uncertain write.

Audio/video currently name an approved production Drive and project structure. Moving those values to a profile must preserve that instruction. Do not silently let a generic folder recommendation override it. If live authorities disagree, identify the exact disagreement and obtain a decision for that item.

Keep action-critical controls readable from each relevant skill. A universal policy in an uninstalled or unlinked file is not a reliable replacement. Test the extracted references before removing the originals.

### Add the concrete WordPress retry defect

In [scripts/wp-mcp-1password, lines 143 onward](https://github.com/ZedBiz44/z-wordpress-mcp-Skill/blob/7f0a1dc920622fb913f24691281dbf474a424f82/scripts/wp-mcp-1password#L143), the same payload is sent to the v2 endpoint and then the v1 endpoint when the first call fails. This loop is used for both discovery and actual tool calls.

If a website change finishes but its response times out, the helper can submit that change again through the other endpoint. That is a **source-confirmed repeat-write risk**, not evidence that a live website has already been damaged.

Required correction:

- Discover/select the endpoint through a read-only request.
- Submit a write once through that verified endpoint.
- If its outcome is uncertain, inspect the actual object before any retry.
- Interpret the tool's returned error/result as well as the HTTP response.
- Test with a simulated “write completed, response lost” case. No duplicate mutation should occur.

The existing published pilot record describes discovery and safe-stop tests, not a successful write or this failure case. Do not label the wrapper write-ready from that record.

### Fix the remaining porting gaps precisely

- **Record Knowledge and Graphic Production memory:** their references instruct saving useful lessons but do not provide the explicit Cody/ChatGPT host-permission treatment now present in the Asana skill. A port must use the host's available method and permissions. It must not enable a provider, change memory settings, or invent a saved result. This does not require a new memory system.
- **Graphic/media delivery:** adapt the proof of delivery to the native tool's actual result. Do not demand a Discord/Telegram-style message ID from a host that provides a different supported handoff.
- **Drive companion:** z-files-folders already overrides generic naming and direct moves for organization. z-drive-gog still carries a different filename example and direct-move workflow. Make that priority clear inside the companion too.
- **Drive helper limits:** drive_guard.py accepts a boolean boundary-proof flag for nested destinations; it does not independently inspect live ancestry. It also relies on the caller for source-scope verification. Keep these caller checks explicit and test them; do not describe the helper as an enforced client isolation boundary.
- **Video companion:** the video-production repository contains **z-video-creative-direction**, an optional skill for hooks, scripts and shot plans. The audit's thirty-repository count is still correct, but it misses this separate installable companion. Record whether it should be installed and test discovery separately. An example SKILL.md in the developer repository is not another production skill.

## Corrected work list an implementation AI can follow

### First: correct the work plan

Owner: the AI assigned to revise the Notion audit.

- Update each recommendation using the thirty-skill table below.
- Mark features already present as source-complete, with behavior checks still separate.
- Replace blanket platform claims with verified capabilities and intended use.
- Remove assumed consolidation, retirement and storage relocation from routine cleanup.
- Add the WordPress retry defect and the narrow porting issues above.
- Preserve the established GitHub, Notion, Drive and Asana homes.
- Keep Edith testing with its existing owner and link its returned results.

Done when the audit has one current backlog where each item names the actual gap, affected skill/file, expected change and observable result. No task should simply say “modernize,” “harden” or “test everything.”

### Then: implement the demonstrated corrections

Owner: the AI assigned implementation, within the scope Jack authorizes.

- Fix and simulate-test the WordPress uncertain-write handling before approving write readiness.
- Align z-drive-gog naming/migration precedence with z-files-folders without weakening account or folder checks.
- If Record Knowledge or Graphic Production is being installed for Cody/ChatGPT, add the narrow memory-permission and delivery adaptations first.
- Split the communication glossary/examples and files/folders batch detail only if that cleanup is selected. Preserve every required behavior and verify the links/package contents.
- Record the source version, package contents and installed version for each changed target.

Done when a changed skill passes the tests relevant to its actual risk and its installed copy matches that tested version. Fixing one platform does not certify another.

### Keep conditional work tied to a real need

- Add a provider or builder reference when an actual production assignment requires it.
- Use existing approved profiles and spending authority; do not ask Jack to reapprove every provider as a prerequisite to unrelated cleanup.
- Check the existing allocator route before proposing a new integration.
- Keep server-specific skills where they are useful.
- Treat consolidation, retirement, storage migration, a new service, provider changes and wider deployment as distinct decisions.

### Finish with separate verification records

For every platform changed, record:

- assistant/platform and source version;
- installed package and loading result;
- relevant real task or safe simulation;
- observed result and remaining limits;
- the saved output or technical proof.

The source review is complete. ChatGPT's private installed copies, live memory saving, paid media, production WordPress writes, fleet health and all business workflows were not exercised in this review. Edith's test remains separate. These limits do not prevent fixing the report or implementing the bounded corrections above.

## Every repository reviewed

“Keep” means the proposed rewrite is not justified by this source review. It does not certify every live integration. Links below point to the exact source versions examined.

| Skill and pinned source | Recommendation | Finding and corrected action |
|---|---|---|
| [z-ai-skill-developer](https://github.com/ZedBiz44/z-ai-skill-developer-Skill/blob/9007570f927bf65e3dd21680bdb451e829802116/SKILL.md) | Focused clarification | Already searches for overlaps, uses proportional risk, delegates native creation, separates platform references, validates packages and requires source matching. Mark those requests existing. Add explicit confidentiality classification and preservation checks when shortening. A dedicated ChatGPT Work reference is justified only for verified differences; Codex instructions are not proof of ChatGPT support. |
| [z-agent-communication](https://github.com/ZedBiz44/z-agent-communication-Skill/blob/a4ad70f072a28cfa1457b52c66d9826fa1275efb/SKILL.md) | Useful optional cleanup | Plain language, ownership, exact outputs, message sizes, self-check and learning from corrections already exist. Moving the long glossary and examples to references is sensible. Add client/public audience guidance only where actually needed; keep Jack/VA wording intact. |
| [z-sop-framework](https://github.com/ZedBiz44/z-sop-framework-Skill/blob/0113b1932fcd495fe4b07a93a9dcd70b1629dc49/SKILL.md) | Keep; test before changing | Already defines who/what/when/where/why, authority, source, inputs, outputs, failure handling and verification. The broad request to add these fields is stale. Test a real human SOP and technical procedure; add only demonstrated missing review/maintenance details. |
| [z-openclaw-agents-md-manager](https://github.com/ZedBiz44/z-openclaw-agents-md-manager-Skill/blob/cd26f9eb9ed2e8bfb4eb4dccc512b1eaee5e19ba/SKILL.md) | Keep; correct audit description | Already separates audit/candidate/deploy/create, preserves instructions, checks live platform limits, backs up and tests rollback. Length figures are guidance, not an unconditional hard limit. Keep truncation protections. Require authorization for deployment; do not make ordinary requested audits unavailable. |
| [z-knowledge-routing](https://github.com/ZedBiz44/z-knowledge-routing-Skill/blob/9506fea7ff63027a65d2b6d381122bdeec584fbf/SKILL.md) | Keep; relabel existing work | Already selects an authoritative home, respects supplied destinations, prefers links, uses native connections and distinguishes the VPS1 wiki from other stores. Test conflicts and duplicate records. No evidence supports rebuilding this router. |
| [z-notion-knowledge-publish](https://github.com/ZedBiz44/z-notion-knowledge-publish-Skill/blob/f97f53054e4b1e7f25f307825de3f614c8a04c36/SKILL.md) | Keep; narrowly test matching | Native connector, live schema, same-subject search, source preservation, author identity, read-back and missing-allocator draft hold already exist. Test alias/topic/code matching and partial writes; add matching detail only if those cases expose a gap. Never broaden Z-Code scope. |
| [z-files-folders](https://github.com/ZedBiz44/z-files-folders-Skill/blob/4b8ebe6a478c621d86429192a5465887d0d435ea/SKILL.md) | Focused refactor is reasonable | The long main file can be split into routine-save, batch, migration and inspection references. Its ordinary-save exception already exists. Preserve copy-first retention, inspection, complete inventories and acceptance gates. Reconcile the GOG companion's names and moves in both directions; retain specific approved media-storage rules until authority is resolved. |
| [z-small-bite-task](https://github.com/ZedBiz44/z-small-bite-task-Skill/blob/3d49d98aa3a5e35902be382e43dd74c5748342f7/SKILL.md) | Keep; test recovery | Already uses few meaningful steps, compact checkpoints, uncertain-write checks and explicit limits on future scheduling or personal memory. The requested native checkpoint change is already done. Use practical results before adding more process. |
| [z-biz-plan](https://github.com/ZedBiz44/z-biz-plan-Skill/blob/09e84a6434fc4f865eb48d6593d8e448148feebd/SKILL.md) | Keep; test real plans | Already distinguishes ordinary drafts from governed publication, allows useful plans without an existing Brief, labels assumptions, sets owners and measures, and prevents planning from authorizing implementation. Do not recreate these modes or make Asana creation automatic. |
| [z-creative-asset-critique](https://github.com/ZedBiz44/z-creative-asset-critique-Skill/blob/3474a1a8d63cdc40d2496555ce717349803b2f6b/SKILL.md) | Keep; test both viewing routes | Already uses Canva inspection when appropriate, gives concise verdicts, preserves good work and distinguishes visible readiness from untested production checks. Business, readability and relevant channel checks exist. Do not duplicate the native Canva review. |
| [z-video-analysis](https://github.com/ZedBiz44/z-video-analysis-Skill/blob/81462e755657fde64d8d302fbf01191b394922a5/SKILL.md) | Keep; verify actual coverage | Already separates facts from claims, uses timestamps, distinguishes transcripts from visual proof, and has native/OpenClaw/Hermes references. Tool preferences can be kept in the relevant reference. Preserve source restrictions and useful partial results when complete inspection is unavailable. |
| [z-video-critique](https://github.com/ZedBiz44/z-video-critique-Skill/blob/cb2666e066e9f3ea97476c800921042391be800c/SKILL.md) | Keep; test moving and audible media | Already has separate depth levels, independent verdicts, timestamped fixes, captions/safe-area references and native inspection limits. Shortening is optional. Stills cannot prove pacing, audio or lip-sync. |
| [z-website-analysis](https://github.com/ZedBiz44/z-website-analysis-Skill/blob/842b8e90a8285e743320b9e497c0165ae417422b/SKILL.md) | Keep; relabel existing checks | Already owns learning rather than editing/readiness, handles browser evidence, protects source expression, and includes mobile, usability, accessibility and SEO foundations. Mark requests to add these existing features complete at source level; do not claim live success from that. |
| [z-website-critique](https://github.com/ZedBiz44/z-website-critique-Skill/blob/59b9022e87423c1ed46d560bc719f58af1833f0a/SKILL.md) | Keep; test actual journeys | Already prioritizes business impact, has explicit readiness limits, mobile/form/SEO/accessibility criteria and production handoffs. Preserve its distinction between a form's success banner and confirmed delivery. |
| [z-asana-agent-control](https://github.com/ZedBiz44/z-asana-agent-control-Skill/blob/38d766adf9082bcacc7ee6ef68b42f77dd17de7d/SKILL.md) | Keep corrected source; verify each installation | Native versus assigned-agent authority and assistant-specific memory rules are now in the maintained source. Do not restore universal external-memory saving or the deleted duplicate reference. ChatGPT must supply its own installed-version and permitted-save evidence. Edith testing stays with its existing owner. |
| [z-advanced-asana-control](https://github.com/ZedBiz44/z-advanced-asana-control-Skill/blob/f192926b0f26af934145f5d58c90f778d6a3e136/SKILL.md) | Keep corrected source; verify each installation | Bounded versus controlled changes, previews, exact targets, partial-failure protection and routine-skill memory routing already exist. Verify the separate ChatGPT copy. Routine setup should not gain another approval merely because it changes Asana. |
| [z-asana-procedures](https://github.com/ZedBiz44/z-asana-procedures-Skill/blob/cef85066f9899100a39a919db14276b8c46ba284/z-asana-procedures/SKILL.md) | Keep; close stale backlog items | Access-skill and communication routing, reviewer access, assign-last setup, review dependency rules and pending-report recovery already exist in SKILL.md, delivery.md and continuation.md. No new Report Pending custom field is needed unless the project's actual workflow requires one. |
| [z-record-knowledge](https://github.com/ZedBiz44/z-record-knowledge-Skill/blob/d0862bc83cb537d109786cbaf029486698c8b54d/SKILL.md) | Targeted native-memory clarification; preserve wider job | It already decides whether to record, checks duplicates, researches/synthesizes, preserves sources and coordinates verified publication. Reducing it to a yes/no decision removes responsibilities. If porting, add host-permission rules for memory writes without changing provider settings; do not replace its established orchestration with an unproven smaller design. |
| [z-wiki-research](https://github.com/ZedBiz44/z-wiki-research-Skill/blob/3b8d41f8391d9764058a4e84d6cceeef5d5437fb/SKILL.md) | Retain for maintained wiki work | Its existing role includes source-grounded wiki research, citations, contradictions and maintenance through the local wiki process. Native Notion research does not prove replacement of that destination. Install where that wiki workflow is useful and accessible; merging is not an approved defect fix. |
| [z-agent-knowledge-mapper](https://github.com/ZedBiz44/z-agent-knowledge-mapper-Skill/blob/9a02b32cd0a2e3f1b1132d9a8d462355e9cdcc63/SKILL.md) | Retain; add adapter only for a real assignment | Already has portable mapping, separate OpenClaw/Hermes references, coverage, duplicate handling, technical/human tracks, lifecycle and actual retrieval/task checks. Its outputs are defined. Do not create a ChatGPT Library knowledge store simply to make the catalog symmetrical. |
| [z-audio-production](https://github.com/ZedBiz44/z-audio-production-Skill/blob/c415938db16efc84a4a06cdddff6dfe42d6eb83d/SKILL.md) | Conditional on working production tools | Capability checks, voice consent, provider selection, approved narration, quality gates and spending controls already exist. Move remaining changeable values only while preserving their approved meanings. A route must generate and inspect real audio before that platform is marked verified. |
| [z-video-production](https://github.com/ZedBiz44/z-video-production-Skill/blob/82eb02cd87cbd40051b0100a32692941c56d0657/SKILL.md) | Conditional; targeted delivery adapter | Already uses the lightest suitable route, separate critique, protected narration and paid-job checks; it is not a mandatory Remotion pipeline. Adapt attachment/storage handling to actual platform capabilities. Preserve approved production storage. Review the optional z-video-creative-direction companion as a separate install choice. |
| [z-graphic-production](https://github.com/ZedBiz44/z-graphic-production-Skill/blob/d2e6653c218cccbd184573f25a6654fa4bd59123/SKILL.md) | Conditional; retain full useful workflow | Already separates core from runtime adapters. It owns final-export inspection, durable storage, critique and delivery proof beyond image generation. Add native handoff rules and host memory permission explicitly; do not discard those responsibilities to make an ImageGen/Canva switchboard. |
| [z-wordpress-mcp](https://github.com/ZedBiz44/z-wordpress-mcp-Skill/blob/7f0a1dc920622fb913f24691281dbf474a424f82/SKILL.md) | Fix before write-readiness approval | SKILL.md supports OpenClaw and Hermes, so the audit's OpenClaw-only claim is wrong. The wrapper can resend a tools/call payload to v1 after any v2 transport failure. Separate safe discovery from writes; after an uncertain write, read actual state rather than automatically replaying it. Add operation-specific recovery and a native route only when available. |
| [z-website-production](https://github.com/ZedBiz44/z-website-production-Skill/blob/e48666a23baa0cf6f90bcc813ec3d22e2b190329/SKILL.md) | Conditional; preserve existing platform framework | Already portable, with runtime discovery, edit/preview/test/recovery capability checks, protected copy, scoped release and rollback. Add small verified builder-specific references where missing. Keep the requested WordPress, GoHighLevel or repository platform; Sites is not a universal replacement. |
| [z-support-doc-ingestion](https://github.com/ZedBiz44/z-support-doc-ingestion-Skill/blob/d7f62100bd838152482a5067ee4a0acc6d6619c0/SKILL.md) | Retain VPS1 responsibility | Explicitly owns the VPS1 shared Memory Wiki compile/lint/search workflow and routes other environments elsewhere. Retirement is only a separately approved migration with equivalent retrieval and rollback proof. Excluding it from an ordinary ChatGPT library is not permission to delete its server workflow. |
| [z-code-allocation](https://github.com/ZedBiz44/z-code-allocation-Skill/blob/99a87358023d9474451eeb9eb0e00c7f0560aa96/SKILL.md) | Retain existing clients; prove access per platform | Already has lookup, allocate, confirm, failed and status operations, request IDs and bundled Python/Node clients. Do not design another service before checking the existing approved route. The local client tests pass, but do not prove live allocator availability, concurrency or Notion reconciliation. |
| [z-gmail-gog](https://github.com/ZedBiz44/z-gmail-gog-Skill/blob/06adebe0482c5875aad1d405d370391f3b8eb029/SKILL.md) | Keep GOG workflow; separate native overlay if needed | Already has assigned profiles, exact sender checks, draft-only/send-allowed limits, expected confirmation rules and untrusted-email handling. Preserve those controls. A connected ChatGPT Gmail route needs its own capability/authority check; do not rewrite the working GOG mechanics merely to remove them from ChatGPT. |
| [z-drive-gog](https://github.com/ZedBiz44/z-drive-gog-Skill/blob/830cf6d0e1d58c65b0ee161566bc1d0a7e7bf8a0/SKILL.md) | Focused companion-policy alignment | The generic spaced/date filename differs from z-files-folders; direct move/archive examples also need explicit precedence for copy-first organization. z-files-folders already declares precedence, so make that reciprocal. Preserve account, folder, sharing and receipt rules. The command helper accepts a boundary-proof flag, not independently verified ancestry; test caller/helper coverage rather than calling it a security lock. |
| [z-agent-health-report](https://github.com/ZedBiz44/z-agent-health-report-Skill/blob/c7e86fe3c1bb1a515944f1b1c9d734da9c4c2712/SKILL.md) | Retain scoped read-only health reporting | Already supports OpenClaw and Hermes and separates current problems, security, maintenance, history and optional checks. The audit's OpenClaw-only description is stale. Work quality is explicitly outside scope; do not add a business-quality audit or a new monitoring service as routine cleanup. |

## Verification performed

- Fetched all thirty current repository trees and all thirty main SKILL.md files.
- Read every main skill and selected supporting references, code and test records needed to evaluate the audit's recommendations.
- Retrieved twenty-four additional reference/script files, including the video creative-direction companion.
- Matched eighty-one installed supporting resources to current GitHub blob hashes for reuse in the inspection. This is source-identity evidence, not a claim that all eighty-one files received an independent code audit.
- Parsed all thirty main YAML metadata blocks with a real YAML parser: thirty unique names and the expected name/description fields.
- Checked Markdown relative links in every main skill against its repository tree: no missing linked local targets found.
- Compared tracked dist files to their matching source paths where both exist: no content differences found. This check does not establish completeness of every generated package or inspect release attachments.
- Ran the existing Z-Code Python/Node client semantic test suite against its local mock server: passed. It covers lookup hit/miss, unknown status, unauthorized requests, server errors, missing command and connection failure. It does not test live allocation, concurrency or server-side idempotency.
- Reviewed the WordPress retry loop directly; did not run a mutation on any website.
- Preserved prior skill installations and source files. This pass produced review records only.

Local source snapshots and checks are retained with this review. The technical report and linked tracking record are the maintained review output. No blanket secret-free or full-security-audit claim is made.
