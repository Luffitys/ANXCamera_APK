.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    # setter for: Landroid/mtp/MtpObjectInfo;->mHandle:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo$1;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    # setter for: Landroid/mtp/MtpObjectInfo;->mHandle:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$200(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mAssociationType:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mAssociationType:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mCompressedSize:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mCompressedSize:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mDateCreated:J
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$500(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mDateCreated:J
    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mDateModified:J
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$600(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mDateModified:J
    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mFormat:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mFormat:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1000(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1100(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1200(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mParent:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1300(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mParent:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1400(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1500(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mStorageId:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1600(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mStorageId:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1700(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mThumbFormat:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1800(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbFormat:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$1900(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # getter for: Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->access$2000(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$202(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mAssociationType:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$302(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mCompressedSize:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$402(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mDateCreated:J
    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$502(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mDateModified:J
    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->access$602(Landroid/mtp/MtpObjectInfo;J)J

    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mFormat:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$702(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$802(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$902(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1002(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_10
    if-nez p1, :cond_14

    const-string p1, ""

    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mHandle:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$102(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mParent:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1302(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1402(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1502(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mStorageId:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1602(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1702(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbFormat:I
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->access$1802(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$1902(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    # invokes: Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->access$2100(JLjava/lang/String;)I

    move-result v1

    # setter for: Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->access$2002(Landroid/mtp/MtpObjectInfo;I)I

    return-object p0
.end method
