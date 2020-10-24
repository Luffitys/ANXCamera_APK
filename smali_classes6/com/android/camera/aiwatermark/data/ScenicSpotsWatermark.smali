.class public Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;
.super Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;
.source ""


# instance fields
.field private mChinaMap:Ljava/util/HashMap;

.field private mIndiaMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mChinaMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mIndiaMap:Ljava/util/HashMap;

    return-void
.end method

.method private getChinaRegion()Ljava/util/HashMap;
    .locals 20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v2, 0x40442d2d666a9824L    # 40.352948

    const-wide v4, 0x40442e44a6223e18L    # 40.36147

    const-wide v6, 0x405d0088a8b08dd2L    # 116.008341

    const-wide v8, 0x405d016262cba733L    # 116.02163

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v1, "great_wall"

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v12, 0x4043f4b5b2d4d402L    # 39.911795

    const-wide v14, 0x4043f5fd71b04684L    # 39.921797

    const-wide v16, 0x405d18a86d71f362L    # 116.38528

    const-wide v18, 0x405d195cd4ed2cbfL    # 116.396291

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "the_palace_museum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x4043efde05037500L    # 39.873963

    const-wide v6, 0x4043f176bc1effa0L    # 39.886436

    const-wide v8, 0x405d1986d71f3626L    # 116.398855

    const-wide v10, 0x405d1a7564302b41L    # 116.413415

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "temple_of_heaven"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x4043fd765fd8adacL    # 39.980175

    const-wide v6, 0x4044001dc0db2703L    # 40.000908

    const-wide v8, 0x405d10b57c4e2f38L    # 116.261077

    const-wide v10, 0x405d11aa582dbe7fL    # 116.276022

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "the_summer_palace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403e3b40d4dc65c7L    # 30.231458

    const-wide v6, 0x403e4285015c2092L    # 30.259842

    const-wide v8, 0x405e08717df19d67L    # 120.131927

    const-wide v10, 0x405e09c970f7b9e0L    # 120.15292

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "west_lake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403f4c33b5393251L    # 31.297664

    const-wide v6, 0x403f532d905c0336L    # 31.324914

    const-wide v8, 0x405e25d7fd82773eL    # 120.591308

    const-wide v10, 0x405e28b990afe60cL    # 120.636326

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "suzhou_gardens"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403e155821294574L    # 30.083376

    const-wide v6, 0x403e325cb35f3d7dL    # 30.196727

    const-wide v8, 0x405d85a6b50b0f28L    # 118.0883

    const-wide v10, 0x405d8e101f31f46fL    # 118.219734

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "mount_huang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x404130d9ad85dfa8L    # 34.381643

    const-wide v6, 0x4041319e6256366dL    # 34.387646

    const-wide v8, 0x405b51a5e353f7cfL    # 109.27575

    const-wide v10, 0x405b5230941c8217L    # 109.284215

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "the_terracotta_army"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403d01df00abf76aL    # 29.007309

    const-wide v6, 0x403d6e14f0520d13L    # 29.430007

    const-wide v8, 0x405b91de093532e8L    # 110.279177

    const-wide v10, 0x405bab09c3ce208aL    # 110.672471

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "zhang_jia_jie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403d8fa6266fd652L    # 29.561129

    const-wide v6, 0x403d9030f49491f3L    # 29.563247

    const-wide v8, 0x405aa4bb98c7e282L    # 106.57395

    const-wide v10, 0x405aa524894c447cL    # 106.580355

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "hang_ya_cave"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x40411ac753e707e1L    # 34.209208

    const-wide v6, 0x40411bba2be0589bL    # 34.216619

    const-wide v8, 0x405b3e0b5aa71583L    # 108.969443

    const-wide v10, 0x405b3ead46f587d7L    # 108.979326

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "tang_paradise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x40386fccaf709b74L    # 24.436717

    const-wide v6, 0x403873fe2a3cea6cL    # 24.453097

    const-wide v8, 0x405d83b3e1437c57L    # 118.057854

    const-wide v10, 0x405d84face67d780L    # 118.077808

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "gu_lang_island"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403da70d413122b8L    # 29.652546

    const-wide v6, 0x403da86dd69d3027L    # 29.657926

    const-wide v8, 0x4056c768e820e62aL    # 91.115778

    const-wide v10, 0x4056c7c532a497faL    # 91.121411

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "the_potala_palace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403f3b3de1e2de87L    # 31.231413

    const-wide v6, 0x403f3e6efc371da3L    # 31.243881

    const-wide v8, 0x405e5f347e8ccdd9L    # 121.487579

    const-wide v10, 0x405e5f9fa97e132bL    # 121.49412

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "the_bund"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x4036484ed6fda837L    # 22.282453

    const-wide v6, 0x40364d6c0d6f544cL    # 22.30243

    const-wide v8, 0x405c88e8576cce5fL    # 114.139181

    const-wide v10, 0x405c8cdf00abf76aL    # 114.201111

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "victoria_harbor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getIndiaRegion()Ljava/util/HashMap;
    .locals 20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v2, 0x403b2b823c85c24cL    # 27.169956

    const-wide v4, 0x403b2ced916872b0L    # 27.1755

    const-wide v6, 0x405382933e35c5b5L    # 78.040237

    const-wide v8, 0x405382cbd1244a62L    # 78.04369

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v1, "taj_mahal"

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v12, 0x403ca699b6f5caf3L    # 28.650783

    const-wide v14, 0x403ca91b823c85c2L    # 28.660576

    const-wide v16, 0x40534f36933a0408L    # 77.237706

    const-wide v18, 0x40534fa133c1ce6cL    # 77.244214

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "red_fort"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x4032ebf7164c729fL    # 18.921739

    const-wide v6, 0x4032ec195cc857f3L    # 18.922262

    const-wide v8, 0x4052356494d50ebbL    # 72.834264

    const-wide v10, 0x4052356fd651b0cdL    # 72.834951

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "gateway_mumbai"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403c9cdd1e53a81eL    # 28.612749

    const-wide v6, 0x403c9cf61672324dL    # 28.61313

    const-wide v8, 0x40534eadff822bbfL    # 77.22937

    const-wide v10, 0x40534eb4202d9cf1L    # 77.229744

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "gateway_delhi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x4032f07d912556d2L    # 18.939416

    const-wide v6, 0x4032f0c32a8c9b84L    # 18.940478

    const-wide v8, 0x4052356deb95e5b0L    # 72.834834

    const-wide v10, 0x40523588051c9f73L    # 72.836427

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "jatrapatti_shiwaji"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403b2d15df6555c5L    # 27.176115

    const-wide v6, 0x403b2ee1cde5d181L    # 27.183133

    const-wide v8, 0x40538123e5b8561dL    # 78.017816

    const-wide v10, 0x40538198244e93e2L    # 78.024911

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "agra_fort"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403afaec5b078d93L    # 26.980169

    const-wide v6, 0x403afcdcebfec13cL    # 26.987746

    const-wide v8, 0x4052f66a11ec918eL    # 75.850224

    const-wide v10, 0x4052f6c4a4095f24L    # 75.855752

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "amber_fort"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/aiwatermark/data/Region;

    const-wide v4, 0x403aec61a60d4563L    # 26.923365

    const-wide v6, 0x403aecb4bf8fcd68L    # 26.924633

    const-wide v8, 0x4052f4e3193f6c27L    # 75.826361

    const-wide v10, 0x4052f4ef954eb13eL    # 75.827123

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/aiwatermark/data/Region;-><init>(DDDD)V

    const-string v2, "hawa_mahal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getForAI()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getForManual()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getRegionMap(I)Ljava/util/HashMap;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mIndiaMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->getIndiaRegion()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mIndiaMap:Ljava/util/HashMap;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mIndiaMap:Ljava/util/HashMap;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mChinaMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->getChinaRegion()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mChinaMap:Ljava/util/HashMap;

    :cond_3
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->mChinaMap:Ljava/util/HashMap;

    return-object p0
.end method
