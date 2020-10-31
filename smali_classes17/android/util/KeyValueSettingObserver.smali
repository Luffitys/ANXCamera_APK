.class public abstract Landroid/util/KeyValueSettingObserver;
.super Ljava/lang/Object;
.source "KeyValueSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/KeyValueSettingObserver$SettingObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyValueSettingObserver"


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    new-instance v0, Landroid/util/KeyValueSettingObserver$SettingObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/util/KeyValueSettingObserver$SettingObserver;-><init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;Landroid/util/KeyValueSettingObserver$1;)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$100(Landroid/util/KeyValueSettingObserver;)V
    .registers 1

    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    return-void
.end method

.method static synthetic access$200(Landroid/util/KeyValueSettingObserver;)Landroid/util/KeyValueListParser;
    .registers 2

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    return-object v0
.end method

.method private setParserValue()V
    .registers 5

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyValueSettingObserver"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method


# virtual methods
.method public abstract getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
.end method

.method public start()V
    .registers 5

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->update(Landroid/util/KeyValueListParser;)V

    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public abstract update(Landroid/util/KeyValueListParser;)V
.end method
