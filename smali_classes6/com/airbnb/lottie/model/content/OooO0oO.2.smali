.class public Lcom/airbnb/lottie/model/content/OooO0oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/model/content/OooO0O0;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field private final OooO0OO:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    iput-boolean p3, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0OO;)Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0o0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/airbnb/lottie/o000oOoO;->OooOOOO()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Animation contains merge paths but they are disabled."

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0O0/OooOOOO;-><init>(Lcom/airbnb/lottie/model/content/OooO0oO;)V

    return-object p1
.end method

.method public OooO0O0()Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0OO:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/OooO0oO;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
