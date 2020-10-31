.class public final synthetic Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ICurrentThreadId;


# static fields
.field public static final synthetic INSTANCE:Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;

    invoke-direct {v0}, Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;-><init>()V

    sput-object v0, Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;->INSTANCE:Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method
