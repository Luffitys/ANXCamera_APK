.class public final synthetic Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;->INSTANCE:Lcom/android/internal/app/procstats/-$$Lambda$ProcessStats$6CxEiT4FvK_P75G9LzEfE1zL88Q;

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

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;

    invoke-static {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->lambda$static$0(Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;)I

    move-result p1

    return p1
.end method
