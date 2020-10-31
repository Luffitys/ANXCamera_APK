.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$32BPn07fHH6a3_-pvYesFWt9GCU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$fillAllServiceTargets$9(Ljava/util/Map$Entry;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
