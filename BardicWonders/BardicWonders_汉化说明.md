# Bardic Wonders（奇吟异技）汉化说明

## 一、模组信息

| 项目 | 内容 |
| --- | --- |
| 模组名 | Bardic Wonders |
| 作者 | The Artisan（artisans-corner.com） |
| 平台 | BG:EE / BG2:EE / EET（部分组件依赖 EEex） |
| 源目录 | `E:\GitHub\Bardic-Wonders\BardicWonders` |
| 入口 | `Setup-BardicWonders.tp2` |

本模组**没有 tra 语言文件**：入口仅注册 `LANGUAGE ~English~`，`AUTO_TRA` 指向的 `translations` 目录不存在，全仓无 `.tra`。可见文本全部内嵌在 `.tp2 / .tpa / .tph / .d` 源码中。因此本次为**源码内汉化**：直接在源文件里就地替换可见文本，不新建 schinese tra 层，不改写语言注册。

## 二、汉化范围

共改写 **33 个源码文件**，原始英文副本保存在 `bw_backup\`（按 `lib\`、`effects\`、`dialogue\`、根目录平铺）。**2026-11-17 起两个备份目录已移出模组目录**，避免随发布打包，现位于 `C:\Users\yuyou\.doubao\lark-chats\2026-11-16\new-chat-1\BardicWonders_原始备份\`（`bw_backup\` 英文原版 33 个、`bw_backup_cn\` 中文中间版 7 个）。

| 分组 | 文件 | 汉化内容 |
| --- | --- | --- |
| 入口 | `Setup-BardicWonders.tp2` | 26 个组件名、3 个分组名、`REQUIRE_PREDICATE` 报错提示 |
| 对话 | `dialogue\c0leanne.d` | 老板娘莉安的全部台词与玩家选项（含长剑“挽歌”、短弓“悲叹”购买选项） |
| effects | `effects\analyze.tpa` | 抗性/等级/豁免状态标签、50 条“生命骰：N” |
| effects | `effects\combat_casting.tpa` | 状态名“战斗施法”“强化战斗施法” |
| effects | `effects\poison_weapon.tpa` | 物品名“淬毒武器”及描述 |
| effects | `effects\toughness.tpa` | 状态名“坚韧” |
| lib 职业 | `lib\blade.tpa` `jester.tpa` `skald.tpa` `abettor.tpa` `dancer.tpa` `darkbloom.tpa` `stormdrummer.tpa` `troubadour.tpa` `deathsinger.tpa` `strategist.tpa` `kapellmeister.tpa` `gallant.tpa` | 职业名（mixed/lower）、简介 briefdesc、长描述 help、优势/劣势条目 |
| lib 兼职 | `lib\mage_bard.tpa` | 法师/诗人、幻术师/诗人、战士/法师/诗人、战士/幻术师/诗人的名称、简介与 2DA 能力说明句 |
| lib 物品/法术 | `lib\itempack.tpa` `lib\new_spells.tpa` `lib\hlas.tpa` `lib\inspirations.tpa` `lib\dark_inspirations.tpa` | 商店名、物品/能力/法术名与描述、诗人感召说明 |
| lib 调整 | `lib\alignment.tpa` `lib\armored_casting.tpa` `lib\bardsongtweaks.tpa` `lib\shields.tpa` `lib\bardsongtweaks_magebard.tpa` 相关 | 阵营/着甲/歌谣/盾牌等写入 kitlist.2da 的说明短句 |
| lib 机制 | `lib\analyze.tpa` `lib\macros.tpa` `lib\more_hla.tpa` `lib\alter_script.tpa` `lib\replace_multiline.tpa` | 分析模板标签、报错与安装日志提示 |

### 组件一览（分组）

- **职业**：舞剑士、小丑、北地诗人、面具侍从、舞者、暗华诗人、雷霆鼓手、行吟诗人、亡歌者、军师、乐长、豪情骑士
- **物品与能力**：物品、灵感激励、高阶能力、新增诗人法术
- **调整与补丁**：诗人着甲施法、诗人歌谣机制调整、诗人可用法师物品与牧师卷轴、诗人可用小型与中型盾牌、诗人可用头盔、歌谣头顶视觉特效、法师/诗人与战士/法师/诗人兼职、诗人 3e 阵营规则、诗人施法等级从 2 级起算、对话职业判定修补

## 三、编码与换行

- 输出编码：**UTF-8 无 BOM**；换行：**CRLF**（与原文件一致，全仓零裸 LF）。
- 回写保持源码原有编码与行尾；占位符、resref、路径、变量插值、opcode/参数数字一律原样保留。
- 未新建 tra，未改动 `LANGUAGE ~English~` 注册行；中文文本在安装时由 WeiDU 写入对应 strref。

## 四、术语表

### 职业译名

| 英文 | 中文 |
| --- | --- |
| Blade | 舞剑士 |
| Jester | 小丑 |
| Skald | 北地诗人 |
| Abettor of Mask | 面具侍从 |
| Dancer | 舞者 |
| Darkbloom Bard | 暗华诗人 |
| Storm Drummer | 雷霆鼓手 |
| Troubadour | 行吟诗人 |
| Deathsinger | 亡歌者 |
| Strategist | 军师 |
| Kapellmeister | 乐长 |
| Gallant | 豪情骑士 |
| Mage / Bard | 法师/诗人 |
| Illusionist / Bard | 幻术师/诗人 |
| Fighter / Mage / Bard | 战士/法师/诗人 |
| Fighter / Illusionist / Bard | 战士/幻术师/诗人 |

### 专名与能力

| 英文 | 中文 |
| --- | --- |
| Mask | 面具 |
| Eldath | 埃达丝 |
| Oghma | 欧格玛 |
| Raijin（Drums of Raijin） | 雷神（雷神之鼓） |
| Shou Lung | 受龙 |
| Leanne | 莉安 |
| Dirge（长剑） | 挽歌 |
| Lament（短弓） | 悲叹 |
| Warlock | 术士 |
| trobairitz | 行吟女诗人 |
| Garrick | 加瑞克 |
| Tymora | 太摩拉 |
| Titania | 缇坦妮亚 |
| Bard Song | 诗人歌谣 |
| Bardic Inspirations | 诗人感召 |
| Battle Caster | 战斗施法者 |
| Resonating Weapon | 共鸣武器 |
| Crushing Despair | 粉碎绝望 |
| Sound Burst | 爆裂音波 |
| Poison Weapon | 淬毒武器 |
| Toughness | 坚韧 |

### 法术速览与分析标签

- 字段：等级 / 领域 / 有效距离 / 持续时间 / 施法时间 / 影响范围 / 豁免。
- 学派：变化系、咒法系、死灵系、附魔系/魅惑系、塑能系、防护系。
- 抗性：酸蚀、寒冷、钝击、电击、火焰、魔法伤害、魔法、远程、穿刺、挥砍；等级：易伤、低、中等、高、极高、免疫。
- 豁免：死亡、魔杖、变形、吐息、法术；豁免结果：无效、减半、无。

## 五、保留不译

1. **占位符与内部标记**：`<PRO_HISHER>`、`<PRO_HIMHER>`、`<PRO_HESHE>`、`<BARDIC_SPELLS>`、`<BARDIC_INSPIRATIONS>`、`NO_AURA`、`NO_SMITE_EVIL` 等原样保留。
2. **资源标识**：resref、IDS 常量、文件路径、`%变量%` 插值、opcode 与参数数字、歌谣/能力内部键名。
3. **替换锚点**：`REPLACE_TEXTUALLY` 的 `old_` 锚点在纯中文安装下按中文现状子串适配（详见第八节）；中文现状中找不到对应旧行的死锚点保留英文；`new_` 为玩家可见中文文案。
4. **弹道与职业匹配标识**：`ADD_PROJECTILE` 的 `C0 …` 弹道标签、opcode 319 物品限制效果中的 `Bard` / `Warlock` 匹配串属内部标识，保留不译，避免破坏既有效果匹配。
5. **第三方库与脚本逻辑**：`lib\a7#add_kit_ex.tpa` 整体保留；`lib\ClassSpellTool.TPA` 内 Lua 代码块（变量、函数、分支、2DA 遍历）保留；`.d` 中的触发器与 DO 动作块保留。
6. **注册与标识行**：`LANGUAGE ~English~`、`AUTO_TRA` 路径、作者署名、游戏/模组标识（`bgee bg2ee eet`、`EEex`、`BardicWonders.tp2`）保留。
7. **二进制资源**：预置 `.itm / .spl / .sto` 的姓名与描述字段为空，走安装时 tpa 写入的 strref；`.bam` 为像素压缩噪声；`.pro / .eff / .spl` 内仅含 resref 与特效标识；`c0leanne.cre` 内部名 `Meronia` 保留。二进制中未发现可译的内嵌英文散文。

## 六、校验记录

| 检查项 | 结果 |
| --- | --- |
| 源码文件编码（UTF-8 无 BOM） | 通过（100/100） |
| 纯 CRLF、无裸 LF | 通过（100/100，bad=0） |
| 改写文件原始备份 | 通过（33 个，原存于 `bw_backup\`，内容与 git HEAD 原始一致，仅行尾为 CRLF；现已移出模组目录，见第一节） |
| 二进制内嵌散文扫描 | 通过：无可读英文文本，文本源头均在源码 |
| 残留英文扫描 | 剩余命中全部为替换锚点、脚本触发器、路径、resref 或内部标识，无漏译可见散文 |
| 本轮锚点适配文件编码/行尾 | 通过：7 个 tpa 均 UTF-8 无 BOM、纯 CRLF、零裸 LF，`~` 定界符成对 |

校验与提取脚本存放在工作目录 `C:\Users\yuyou\.doubao\lark-chats\2026-11-09\new-chat-1\`：`bw_extract2.py`（提取分类）、`bw_apply.py / bw_apply2.py / bw_apply3.py`（分批回写）、`bw_check_enc.py`（编码行尾校验）、`bw_scan2.py`（残留扫描）、`bw_bin_scan.py`（二进制扫描）、`bw_dict.json`（第一批 832 条译文字典）。

## 七、备注

1. 本模组安装时不做 tra 转码；只要源码保持 UTF-8，EET 的中文 `dialog.tlk` 即可正常显示写入的中文 strref。
2. 上游两处文案复用问题已按职业语义纠正：幻术师兼职的简介/长描述标题原为复用法师标题，已改为“幻术师/诗人”“战士/幻术师/诗人”；行吟诗人简介上游误复制为侍从文本，已按行吟诗人语义更正。
3. 如需还原：删除改写后的源码文件，将 `BardicWonders_原始备份\bw_backup\` 内对应副本改回原名即可（备份为原始英文 + CRLF；该目录已移出模组，完整路径见第一节）。也可直接 `git checkout -- <文件>` 还原到 HEAD。
4. 语音文件（`.wav`）仍为英文原声，本次汉化不涉及语音。

## 八、描述替换锚点适配（中文旧文本）

### 机制

各调整类 tpa 遍历 `clastext.2da`（个别再同步到 `kitlist.2da` 第 4 列）：`READ_2DA_ENTRY … 4` 读出描述列 strref → `GET_STRREF` 解析为**安装时当前语言 tlk 的实际文本** → `INNER_PATCH_SAVE` 内 `REPLACE_TEXTUALLY` 做纯文本精确子串匹配 → `SET_2DA_ENTRY … RESOLVE_STR_REF` 写回新 strref。`REPLACE_TEXTUALLY` 不命中时静默跳过，不报错也不 WARN。纯中文安装下，`old_` 锚点必须是中文现状里真实存在的子串。

待匹配描述分**两类来源**，锚点须分别对照：

1. **基础职业行（如 `BARD`）**：描述 strref 指向游戏基础 tlk；纯中文安装下是简中诗人描述，old 取简中 tlk 现状子串。
2. **模组新增兼职 / kit 行（`SKALD`、`C0_GALLANT`、`C0_MAGE_BARD`、`C0_FIGHTER_MAGE_BARD` 等）**：描述是模组安装时先通过 add_kit / `RESOLVE_STR_REF` / `STRING_SET_EVALUATE` 写入的**模组内部文本**，本批 tpa 再二次 REPLACE；old 对照模组 tpa 内该描述的实际语言（前序已译中文的取中文源子串）。注意此环节发生在模组写入描述之后，不能默认锚点都来自游戏 tlk。

### 已改为中文锚点

| 文件:行 | old 锚点中文子串 | 待匹配文本来源 | 替换方式 |
| --- | --- | --- | --- |
| `lib\alignment.tpa:54` | `阵营限制：任何非守序的。` | 基础职业·游戏简中 tlk 诗人条目 | 整行替换为新描述 |
| `lib\shields.tpa:44` | `熟练：简易武器。也熟用轻甲、中甲和盾牌。` | 基础职业·游戏简中 tlk | 锚定熟练行后追加新盾牌说明 |
| `lib\armored_casting.tpa:115` | `穿着铠甲会受到法术失效率影响` | 基础职业·游戏简中 tlk | 锚定施法行内追加着甲施法说明 |
| `lib\armored_casting.tpa:128` | `– 可在任意战斗风格上专精（两个熟练度点）。` | 模组内部·北地诗人中文描述 | 行后追加战斗施法者说明 |
| `lib\armored_casting.tpa:129` | `1 级：命中检定、防御等级与士气 +2。` | 模组内部·北地诗人中文描述（就近条目行） | 行后追加战斗施法者说明 |
| `lib\inspirations.tpa:64` | `劣势：` | 模组内部·各新套件中文描述通用标签 | 标签后追加感召限制说明 |

### 保留英文 old（死锚点）

以下旧行在中文现状中不存在对应条目，按“找不到对应旧行即保留、不强行猜译”处理：不命中时该条替换静默跳过。

- `lib\bardsongtweaks.tpa:155` 歌谣逐级效果块；`:164` 歌谣能力行（基础职业·游戏 tlk 诗人描述中无对应条目）
- `lib\inspirations.tpa:47` 感召行（基础职业·游戏 tlk 无对应条目）；`:382` 定义后未被任何 REPLACE 引用的 `old_bard` 变量（遗留死变量）
- `lib\mage_bard.tpa:805 / :817` 两段整段（模组内部兼职）：对应 help / briefdesc 源头前序已整体译为中文，这两段 `REPLACE` 属冗余死代码，保留未动，建议后续清理
- 占位符 `<BARDIC_SPELLS>`（`lib\new_spells.tpa:753`）、`<BARDIC_INSPIRATIONS>`（`lib\inspirations.tpa:403`）为中性标记，原样保留

### 未验证前提

本地仓库不含基础游戏资源 `clastext.2da`，BARD 行描述 strref 是否就解析到简中 tlk 的基础诗人条目，未在真实中文安装环境运行实测；上述指向基础诗人描述的三条锚点（`alignment / shields / armored_casting` 的 BARD 分支）需实际安装一次确认命中。指向模组自身中文源描述的三条锚点（北地诗人两处、新套件“劣势：”）措辞已对照源码逐字核实。

本轮改动前的中文版源码副本原存于 `bw_backup_cn\lib\`（前序英文原版在 `bw_backup\`），两目录现已一并移出模组，见第一节。**注意 `bw_backup_cn\` 内容早于第一、二轮修正，仅作历史留存，不要用于还原。**

## 九、第二轮：按名词表统一（2026-11-17）

标准：`E:\DND\汉化规范\BG MODS名词更新记录汇总.xlsx`，并对照 EET 本体 `dialog.EETchs.tra` 实际用词。
共改动 **22 个源码文件 + 本说明**，替换 **351 处**，另恢复 **7 处英文弹道名**。改动前原件备份在工作目录 `_scratch\bw_pre_edit\`（仓库本身可用 git diff 复核）。

### 用词替换

| 原 | 改为 | 处数 |
| --- | --- | --- |
| 护甲等级 | 防御等级 | 129 |
| 魔法抗性 | 魔法抗力 | 27 |
| 作用范围 | 影响范围 | 26 |
| 刀锋 | 舞剑士 | 24 |
| 暴击 | 致命一击 | 24 |
| 视觉范围 | 视野范围 | 20 |
| 射程： | 有效距离： | 20 |
| 战歌者 | 北地诗人 | 19 |
| THAC0 | 零级命中值 | 15 |
| 弄臣 | 小丑 | 13 |
| 伊尔达斯 | 埃达丝 | 10 |
| 每回合攻击次数 | 每轮攻击次数 | 5 |
| 持续时间：瞬发 | 持续时间：立即 | 5 |
| 召唤系 | 咒法系 | 3 |
| 祈求系 | 塑能系 | 2 |
| 奥格马 / 寿龙 / 加里克 / 泰摩拉 | 欧格玛 / 受龙 / 加瑞克 / 太摩拉 | 各 2 |
| 豪情圣武士（仅 tp2） | 豪情骑士 | 2 |

### 内部标识保持英文（写 IDS，不能译）

`ADD_PROJECTILE` 的弹道名会写入 `PROJECTL.IDS`，汉化会破坏匹配，已从 `bw_backup\` 恢复英文原名：

- `effects\combat_casting.tpa:6` 战斗施法 → `Combat Casting`
- `lib\darkbloom.tpa:157` 黑暗纠缠 → `Dark Entanglement`
- `lib\darkbloom.tpa:158` 歌谣忽略施法者 → `Bard Song Ignore Caster`
- `lib\darkbloom.tpa:188 / :256 / :304` 荆棘喷吐 → `Thorn Spray`
- `lib\darkbloom.tpa:345` 伊尔达斯迷雾 → `Mist of Eldath`

### 其他

1. **Gallant 职业名统一为“豪情骑士”**：tp2 原写“豪情圣武士”，与 gallant.tpa 及本说明不一致，已按多数口径统一。
2. **`lib\new_spells.tpa` 行尾已转回 CRLF**（此前编辑“附魔系/魅惑系”时被转成纯 LF），现全仓文本文件均为 UTF-8 无 BOM + CRLF。
3. **保留不动**：`对抗魔杖：`（豁免类型，非魔法抗力）、`诗人`（本体同样通用）、`豁免：`（本体法术条目同用法）、`面具侍从`（名词表 Mask→马斯克 备注“仅在描述神时这样翻译”，职业名保留意译）。
4. **校验**：中文行内旧写法清零；`ADD_PROJECTILE` 无中文；各文件 `~` 定界符数量与行数同改前一致；`bw_backup\` 英文锚点未受影响（`armored_casting.tpa:129` 等中文锚点与被锚文本同步替换，仍一一对应）。
5. **两个相似能力名分开译（按你确定的口径）**：`Combat Casting` → **战斗施法**，`Improved Combat Casting` → **强化战斗施法**（`effects\combat_casting.tpa:25-26`、`lib\skald.tpa:31`）；`Battle Caster` → **战斗施法者**（`lib\hlas.tpa:222-223` 高阶能力、`lib\armored_casting.tpa:130` 北地诗人特性）。注意两者不是同一能力，不要互相统一。
6. **安装日志一律不译（新规则）**：玩家在游戏里看不到的 `PRINT / PATCH_PRINT / WARN / LOG` 等日志文本保留英文。本轮已把 15 行中文日志及 `lib\troubadour.tpa` 的 2 行选项续行全部还原为英文原文，此后新增内容同样不译。
