.class public Lcom/ss/android/vesdk/VETimelineParams;
.super Ljava/lang/Object;
.source "VETimelineParams.java"


# instance fields
.field public aTrimIn:[I

.field public aTrimOut:[I

.field private audioFileIndex:[I

.field public audioFilePaths:[Ljava/lang/String;

.field public enable:[Z

.field public rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public speed:[D

.field public transitions:[Ljava/lang/String;

.field public vTrimIn:[I

.field public vTrimOut:[I

.field public videoFileIndex:[I

.field public videoFilePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    const/4 v2, -0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    new-array p1, v0, [D

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->transitions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFilePaths:[Ljava/lang/String;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    new-array p1, v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    sget-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    aput v1, p1, v1

    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    aput v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
