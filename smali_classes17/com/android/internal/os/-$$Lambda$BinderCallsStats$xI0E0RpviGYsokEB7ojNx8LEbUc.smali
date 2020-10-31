.class public final synthetic Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$xI0E0RpviGYsokEB7ojNx8LEbUc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-static {p1}, Lcom/android/internal/os/BinderCallsStats;->lambda$dumpLocked$1(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D

    move-result-wide v0

    return-wide v0
.end method
