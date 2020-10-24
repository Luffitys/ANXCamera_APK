.class public Lmiui/date/Holidays;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CALENDAR_POOL:Lmiui/util/Pools$Pool;

.field private static final CHINESE_CALENDAR_HOLIDAYS:[[I

.field private static final EASTER_DAYS:I = -0x1

.field private static final EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

.field private static final EVE_OF_THE_SPRING_FESTIVAL:I = -0x1

.field private static final HOLIDAYS:Ljava/util/HashMap;

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mIsChinese:Z

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v0, 0x10

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, -0x1

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_eve_of_the_spring_festival:I

    const/4 v6, 0x1

    aput v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const/16 v4, 0x65

    aput v4, v3, v5

    sget v7, Lcom/miui/internal/R$string;->the_spring_festival:I

    aput v7, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    const/16 v7, 0x66

    aput v7, v3, v5

    sget v7, Lcom/miui/internal/R$string;->the_second_day:I

    aput v7, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const/16 v7, 0x67

    aput v7, v3, v5

    sget v7, Lcom/miui/internal/R$string;->the_third_day:I

    aput v7, v3, v6

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [I

    const/16 v8, 0x68

    aput v8, v3, v5

    sget v8, Lcom/miui/internal/R$string;->the_forth_day:I

    aput v8, v3, v6

    const/4 v8, 0x4

    aput-object v3, v1, v8

    new-array v3, v2, [I

    const/16 v9, 0x69

    aput v9, v3, v5

    sget v9, Lcom/miui/internal/R$string;->the_fifth_day:I

    aput v9, v3, v6

    const/4 v9, 0x5

    aput-object v3, v1, v9

    new-array v3, v2, [I

    const/16 v10, 0x6a

    aput v10, v3, v5

    sget v10, Lcom/miui/internal/R$string;->the_sixth_day:I

    aput v10, v3, v6

    const/4 v10, 0x6

    aput-object v3, v1, v10

    new-array v3, v2, [I

    const/16 v11, 0x6b

    aput v11, v3, v5

    sget v11, Lcom/miui/internal/R$string;->the_seventh_day:I

    aput v11, v3, v6

    const/4 v11, 0x7

    aput-object v3, v1, v11

    new-array v3, v2, [I

    const/16 v12, 0x73

    aput v12, v3, v5

    sget v12, Lcom/miui/internal/R$string;->the_lantern_festival:I

    aput v12, v3, v6

    const/16 v12, 0x8

    aput-object v3, v1, v12

    new-array v3, v2, [I

    const/16 v13, 0x1f9

    aput v13, v3, v5

    sget v13, Lcom/miui/internal/R$string;->the_dragon_boat_festival:I

    aput v13, v3, v6

    const/16 v13, 0x9

    aput-object v3, v1, v13

    new-array v3, v2, [I

    const/16 v14, 0x2c3

    aput v14, v3, v5

    sget v14, Lcom/miui/internal/R$string;->the_night_of_sevens:I

    aput v14, v3, v6

    const/16 v14, 0xa

    aput-object v3, v1, v14

    new-array v3, v2, [I

    const/16 v15, 0x2cb

    aput v15, v3, v5

    sget v15, Lcom/miui/internal/R$string;->the_spirit_festival:I

    aput v15, v3, v6

    const/16 v15, 0xb

    aput-object v3, v1, v15

    new-array v3, v2, [I

    const/16 v16, 0x32f

    aput v16, v3, v5

    sget v16, Lcom/miui/internal/R$string;->the_mid_autumn_festival:I

    aput v16, v3, v6

    const/16 v16, 0xc

    aput-object v3, v1, v16

    new-array v3, v2, [I

    const/16 v17, 0x38d

    aput v17, v3, v5

    sget v17, Lcom/miui/internal/R$string;->the_double_ninth_festival:I

    aput v17, v3, v6

    const/16 v0, 0xd

    aput-object v3, v1, v0

    new-array v3, v2, [I

    const/16 v18, 0x3f7

    aput v18, v3, v5

    sget v18, Lcom/miui/internal/R$string;->the_water_lantern_festival:I

    aput v18, v3, v6

    const/16 v18, 0xe

    aput-object v3, v1, v18

    new-array v3, v2, [I

    const/16 v18, 0x4b8

    aput v18, v3, v5

    sget v18, Lcom/miui/internal/R$string;->the_laba_festival:I

    aput v18, v3, v6

    const/16 v18, 0xf

    aput-object v3, v1, v18

    sput-object v1, Lmiui/date/Holidays;->CHINESE_CALENDAR_HOLIDAYS:[[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    new-array v3, v11, [[I

    new-array v15, v2, [I

    aput v4, v15, v5

    sget v19, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v19, v15, v6

    aput-object v15, v3, v5

    new-array v15, v2, [I

    const/16 v19, 0xd6

    aput v19, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v20, v15, v6

    aput-object v15, v3, v6

    new-array v15, v2, [I

    const/16 v20, 0x134

    aput v20, v15, v5

    sget v21, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v21, v15, v6

    aput-object v15, v3, v2

    new-array v15, v2, [I

    const/16 v21, 0x138

    aput v21, v15, v5

    sget v22, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v22, v15, v6

    aput-object v15, v3, v7

    new-array v15, v2, [I

    const/16 v22, 0x191

    aput v22, v15, v5

    sget v23, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v23, v15, v6

    aput-object v15, v3, v8

    new-array v15, v2, [I

    const/16 v23, 0x1f5

    aput v23, v15, v5

    sget v24, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v24, v15, v6

    aput-object v15, v3, v9

    new-array v15, v2, [I

    const/16 v24, 0x4c9

    aput v24, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v25, v15, v6

    aput-object v15, v3, v10

    const-string v15, ""

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    new-array v3, v0, [[I

    new-array v15, v2, [I

    aput v4, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v25, v15, v6

    aput-object v15, v3, v5

    new-array v15, v2, [I

    aput v19, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v25, v15, v6

    aput-object v15, v3, v6

    new-array v15, v2, [I

    aput v20, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v25, v15, v6

    aput-object v15, v3, v2

    new-array v15, v2, [I

    aput v21, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v25, v15, v6

    aput-object v15, v3, v7

    new-array v15, v2, [I

    aput v22, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v25, v15, v6

    aput-object v15, v3, v8

    new-array v15, v2, [I

    aput v23, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v25, v15, v6

    aput-object v15, v3, v9

    new-array v15, v2, [I

    const/16 v25, 0x1f8

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_chinese_youth_day:I

    aput v25, v15, v6

    aput-object v15, v3, v10

    new-array v15, v2, [I

    const/16 v25, 0x259

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_childrens_day:I

    aput v25, v15, v6

    aput-object v15, v3, v11

    new-array v15, v2, [I

    const/16 v25, 0x2bd

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_partys_day:I

    aput v25, v15, v6

    aput-object v15, v3, v12

    new-array v15, v2, [I

    const/16 v25, 0x321

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_armys_day:I

    aput v25, v15, v6

    aput-object v15, v3, v13

    new-array v15, v2, [I

    const/16 v25, 0x38e

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v25, v15, v6

    aput-object v15, v3, v14

    new-array v15, v2, [I

    const/16 v25, 0x3e9

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_national_day:I

    aput v25, v15, v6

    const/16 v18, 0xb

    aput-object v15, v3, v18

    new-array v15, v2, [I

    aput v24, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v25, v15, v6

    aput-object v15, v3, v16

    const-string v15, "CN"

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    const/16 v3, 0x12

    new-array v3, v3, [[I

    new-array v15, v2, [I

    aput v4, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v25, v15, v6

    aput-object v15, v3, v5

    new-array v15, v2, [I

    aput v19, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v25, v15, v6

    aput-object v15, v3, v6

    new-array v15, v2, [I

    const/16 v25, 0xe4

    aput v25, v15, v5

    sget v25, Lcom/miui/internal/R$string;->the_peace_day:I

    aput v25, v15, v6

    aput-object v15, v3, v2

    new-array v15, v2, [I

    aput v20, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v20, v15, v6

    aput-object v15, v3, v7

    new-array v15, v2, [I

    aput v21, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v20, v15, v6

    aput-object v15, v3, v8

    new-array v15, v2, [I

    const/16 v20, 0x13a

    aput v20, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_anti_aggression_day:I

    aput v20, v15, v6

    aput-object v15, v3, v9

    new-array v15, v2, [I

    const/16 v20, 0x149

    aput v20, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_tw_youth_day:I

    aput v20, v15, v6

    aput-object v15, v3, v10

    new-array v15, v2, [I

    aput v22, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v20, v15, v6

    aput-object v15, v3, v11

    new-array v15, v2, [I

    const/16 v20, 0x194

    aput v20, v15, v5

    sget v20, Lcom/miui/internal/R$string;->the_tw_childrens_day:I

    aput v20, v15, v6

    aput-object v15, v3, v12

    new-array v12, v2, [I

    aput v23, v12, v5

    sget v15, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v15, v12, v6

    aput-object v12, v3, v13

    new-array v12, v2, [I

    const/16 v13, 0x2cb

    aput v13, v12, v5

    sget v13, Lcom/miui/internal/R$string;->the_anniversary_of_lifting_martial_law:I

    aput v13, v12, v6

    aput-object v12, v3, v14

    new-array v12, v2, [I

    const/16 v13, 0x387

    aput v13, v12, v5

    sget v13, Lcom/miui/internal/R$string;->the_armed_forces_day:I

    aput v13, v12, v6

    const/16 v13, 0xb

    aput-object v12, v3, v13

    new-array v12, v2, [I

    const/16 v13, 0x3a0

    aput v13, v12, v5

    sget v13, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v13, v12, v6

    aput-object v12, v3, v16

    new-array v12, v2, [I

    const/16 v13, 0x3f2

    aput v13, v12, v5

    sget v13, Lcom/miui/internal/R$string;->the_national_day:I

    aput v13, v12, v6

    aput-object v12, v3, v0

    new-array v0, v2, [I

    const/16 v12, 0x400

    aput v12, v0, v5

    sget v12, Lcom/miui/internal/R$string;->the_united_nations_day:I

    aput v12, v0, v6

    const/16 v12, 0xe

    aput-object v0, v3, v12

    new-array v0, v2, [I

    const/16 v12, 0x401

    aput v12, v0, v5

    sget v12, Lcom/miui/internal/R$string;->the_retrocession_day:I

    aput v12, v0, v6

    const/16 v12, 0xf

    aput-object v0, v3, v12

    new-array v0, v2, [I

    const/16 v12, 0x458

    aput v12, v0, v5

    sget v12, Lcom/miui/internal/R$string;->the_national_father_day:I

    aput v12, v0, v6

    const/16 v12, 0x10

    aput-object v0, v3, v12

    new-array v0, v2, [I

    aput v24, v0, v5

    sget v12, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v12, v0, v6

    const/16 v12, 0x11

    aput-object v0, v3, v12

    const-string v0, "TW"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    new-array v1, v11, [[I

    new-array v3, v2, [I

    const/4 v11, -0x1

    aput v11, v3, v5

    sget v11, Lcom/miui/internal/R$string;->the_easter_day:I

    aput v11, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    aput v4, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [I

    aput v19, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [I

    aput v23, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v4, v3, v6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    const/16 v4, 0x2bd

    aput v4, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_hksar_establishment_day:I

    aput v4, v3, v6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    const/16 v4, 0x3e9

    aput v4, v3, v5

    sget v4, Lcom/miui/internal/R$string;->the_national_day:I

    aput v4, v3, v6

    aput-object v3, v1, v9

    new-array v2, v2, [I

    aput v24, v2, v5

    sget v3, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v3, v2, v6

    aput-object v2, v1, v10

    const-string v2, "HK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmiui/date/Holidays$HolidaysSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/date/Holidays$HolidaysSingleton;-><init>(Lmiui/date/Holidays$1;)V

    sput-object v0, Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    new-instance v0, Lmiui/date/Holidays$1;

    invoke-direct {v0}, Lmiui/date/Holidays$1;-><init>()V

    invoke-static {v0, v6}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lmiui/date/Holidays;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/date/Holidays;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lmiui/util/SoftReferenceSingleton;
    .locals 1

    sget-object v0, Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/date/Holidays;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/date/Holidays;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefault()Lmiui/date/Holidays;
    .locals 1

    sget-object v0, Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    return-object v0
.end method

.method private setCountry(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/date/Holidays;->mCountry:Ljava/lang/String;

    const-string v0, "CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/date/Holidays;->mCountry:Ljava/lang/String;

    const-string v0, "HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/date/Holidays;->mCountry:Ljava/lang/String;

    const-string v0, "TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lmiui/date/Holidays;->mIsChinese:Z

    return-void
.end method


# virtual methods
.method protected final getEasterDayOfYear(I)I
    .locals 9

    sget-object p0, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    invoke-static {p1, p0}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    sget-object v0, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmiui/date/Calendar;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0xf

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    invoke-static {p1, v2}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/2addr v4, v2

    :goto_1
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x5

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0, v1, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_3

    :pswitch_1
    const/4 p0, 0x3

    goto :goto_2

    :pswitch_2
    const/4 p0, 0x4

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v1, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v3}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_3

    :pswitch_5
    const/4 p0, 0x7

    :goto_2
    :pswitch_6
    invoke-virtual {v0, v1, p0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :goto_3
    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x64

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr p0, v1

    sget-object v1, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    sget-object v0, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public getHolidayName(Lmiui/date/Calendar;)Ljava/lang/String;
    .locals 11

    sget-object v0, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/date/Holidays;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const-string v1, ""

    if-nez v0, :cond_0

    sget-object v0, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v4, :cond_3

    aget-object v8, v0, v6

    aget v9, v8, v5

    if-eq v9, v7, :cond_1

    aget v7, v8, v5

    if-ne v7, v2, :cond_2

    iget-object p0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget p1, v8, v3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lmiui/date/Holidays;->getEasterDayOfYear(I)I

    move-result v7

    if-ne v2, v7, :cond_2

    iget-object p0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget p1, v8, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lmiui/date/Holidays;->mIsChinese:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lmiui/date/Holidays;->CHINESE_CALENDAR_HOLIDAYS:[[I

    array-length v4, v2

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_6

    aget-object v8, v2, v6

    aget v9, v8, v5

    if-eq v9, v7, :cond_4

    invoke-virtual {p1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v9

    if-nez v9, :cond_5

    aget v9, v8, v5

    if-ne v0, v9, :cond_5

    iget-object p0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget p1, v8, v3

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v9

    const/16 v10, 0xd

    invoke-virtual {p1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_5

    iget-object p0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget p1, v8, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    return-object v1
.end method
