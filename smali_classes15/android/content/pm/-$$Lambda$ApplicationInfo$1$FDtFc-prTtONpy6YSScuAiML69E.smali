.class public final synthetic Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Parcel$SquashReadHelper;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;->INSTANCE:Landroid/content/pm/-$$Lambda$ApplicationInfo$1$FDtFc-prTtONpy6YSScuAiML69E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/content/pm/ApplicationInfo$1;->lambda$createFromParcel$0(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
