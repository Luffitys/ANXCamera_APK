.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$mGiOnnc4PjfZr0Pk1o8TBQMTGGI;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$fillAllServiceTargets$10(Landroid/util/Pair;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
