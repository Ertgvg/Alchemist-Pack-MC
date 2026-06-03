Here is a clean, modern, and highly readable **README.md** file for your GitHub repository. It highlights your custom world-ground mechanic and outlines all the features you've built, making it easy for players to understand how to play!

---

```markdown
# 🧪 The Alchemist's Handbook Datapack & Resource Pack

Welcome to **The Alchemist's Handbook**, a complete vanilla-plus overhaul that replaces traditional crafting grids with immersive, world-ground alchemical transmutations. Cast your items under the open sky, use specialized custom workstations, and harness cosmic smithing mechanics to forge god-tier gear and ultimate items!

Built and optimized natively for **Minecraft 1.21.2+**.

---

## 🚀 Features & Mechanics

### 🌍 World-Ground Crafting
Forget wooden crafting grids. True alchemy happens in the physical world! Toss specific raw ingredients together on the ground or onto dedicated workstations to trigger instant alchemical transmutations.

### 🔨 The Rune Forge (Custom Workstation)
Drop a standard vanilla **Anvil** and a **Refined Iron Ingot** together on the ground to manifest a striking **Blue Alchemical Anvil**. This custom workstation unlocks high-tier gear modifications, silver plating, and legendary item forging.

---

## 📖 Alchemical Recipes & Progression

| Stage / Feature | Ingredients | Workstation | Result & Mechanics |
| :--- | :--- | :--- | :--- |
| **Stage 1: Smelting** | Raw Iron + Coal Block | Ground (Dirt) | **70%:** Carbonized Iron <br> **30%:** Alchemical Slag *(Salvageable)* |
| **Stage 2: Infusion** | Carbonized Iron + Blaze Rod | Ground | **99%:** Glowstone Dust <br> **1%:** Alchemically Forged Netherite Ingot |
| **Stage 3: Purification** | Carbonized Iron + Water Bottle | Ground | **50%:** Pure Silver <br> **50%:** Alchemical Slag |
| **Stage 4: Resonance** | Netherite Ingot + Echo Shard | Ground | **70%:** Refined Netherite Ingot <br> **30%:** Fails *(Returns Netherite)* |
| **Stage 5: Condensation** | 1x Coal Block + 1x Dragon's Breath | Ground | **100%:** Hyper-compressed **Diamond** |
| **Forging Gear** | Iron/Netherite Tool + Refined Ingot | Blue Anvil | Instantly hammers tools into custom **Refined Gear** with built-in Enchantments. |
| **Silver Plating** | Any Golden Tool + Silver | Blue Anvil | Coats fragile gold gear, granting **massive durability** while keeping its lightning-fast attack speed. |
| **The Ultimate Blade** | Refined Netherite Sword + Dragon's Breath + Nether Star | Blue Anvil | The star collapses, unleashing **King Arthur's Legendary Blade**! |
| **Elixir of Life** | 1x Dragon Egg + 1x Dragon Head + 1x Gold Ingot + 1x Silver | Ground | Brews a legendary elixir granting absolute **Resistance V (Complete Invulnerability)**! |

---

## 📦 Resource Pack Showcase

This project includes a dedicated resource pack utilizing modern Minecraft component overrides (`custom_model_data`) to bring these alchemical items to life without replacing vanilla textures:

* **Custom Handbooks:** Includes an interactive in-game guide book featuring custom color hierarchies and array formatting.
* **The Elixir of Life:** Features a vibrant, custom-textured sprite with a glowing emerald-green custom nameplate, explicitly isolated to keep vanilla water bottles bright and blue.
* **Refined Shields:** Includes unique assets mapping custom 3D model properties for both standard holding states and blocking animations.

---

## 🛠️ Installation

### Datapack Setup
1. Download the repository as a `.zip` file (or clone it).
2. Drop the `Alchemist Datapack` folder inside your world's `datapacks` directory:
   `📂 .minecraft/saves/YOUR_WORLD/datapacks/`
3. Enter your world and run `/reload` to initialize the tick loops.

### Resource Pack Setup
1. Drop the `Alchemist Resource Pack` folder or zip into your game's resource pack folder:
   `📂 .minecraft/resourcepacks/`
2. Enable it in your in-game settings. (Use `F3 + T` to force reload textures if making active changes).

---

## ⚙️ Performance & Optimization
This pack is designed with performance in mind. Ground scanning arrays utilize **Fast Fail** filters—heavy custom NBT checks are completely ignored by the engine unless the specific rare target anchor (like a dropped Dragon Egg) is physically present on the floor, keeping your game locked at a stable **20 TPS**.

Developed by **Ertgvg**.

```
