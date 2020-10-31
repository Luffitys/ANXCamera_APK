.class public final synthetic Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;->INSTANCE:Lcom/android/internal/app/procstats/-$$Lambda$AssociationState$kgfxYpOOyQWCFPwGaRqRz0N4-zg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/internal/app/procstats/AssociationState;->lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
