.class public final synthetic Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;

    invoke-direct {v0}, Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;-><init>()V

    sput-object v0, Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;->INSTANCE:Lcom/android/internal/util/-$$Lambda$grRTg3idX3yJe9Zyx-tmLBiD1DM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {p1}, Lcom/android/internal/util/DumpUtils;->isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p1

    return p1
.end method
