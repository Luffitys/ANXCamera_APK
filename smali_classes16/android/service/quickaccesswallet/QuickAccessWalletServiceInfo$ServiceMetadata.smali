.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceMetadata"
.end annotation


# instance fields
.field private final mSettingsActivity:Ljava/lang/String;

.field private final mShortcutLongLabel:Ljava/lang/CharSequence;

.field private final mShortcutShortLabel:Ljava/lang/CharSequence;

.field private final mTargetActivity:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mTargetActivity:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mSettingsActivity:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mShortcutShortLabel:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mShortcutLongLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .registers 1

    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->empty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mTargetActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mShortcutShortLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->mShortcutLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static empty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .registers 2

    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method
