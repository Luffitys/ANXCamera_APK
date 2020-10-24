.class final Lcom/google/android/play/core/splitcompat/LoadedSplitFetcherImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;


# instance fields
.field private final mSplitCompat:Lcom/google/android/play/core/splitcompat/SplitCompat;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/SplitCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/LoadedSplitFetcherImpl;->mSplitCompat:Lcom/google/android/play/core/splitcompat/SplitCompat;

    return-void
.end method


# virtual methods
.method public loadedSplits()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/LoadedSplitFetcherImpl;->mSplitCompat:Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->getLoadedSplits()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
