.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final splitInfoMap:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method getSplitInfoMap()Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method
