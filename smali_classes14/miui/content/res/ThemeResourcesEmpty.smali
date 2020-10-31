.class public Lmiui/content/res/ThemeResourcesEmpty;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResourcesEmpty$LoadThemeValuesCallback;
    }
.end annotation


# static fields
.field public static sInstance:Lmiui/content/res/ThemeResourcesEmpty;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/content/res/ThemeResourcesEmpty;

    invoke-direct {v0}, Lmiui/content/res/ThemeResourcesEmpty;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "FakeForEmpty"

    invoke-direct {p0, v1, v1, v2, v0}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasThemeFile(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 3

    return-void
.end method
