.class public final Landroid/print/PrinterCapabilitiesInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$setColorModes$0(I)V
    .registers 1

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method static synthetic lambda$setDuplexModes$1(I)V
    .registers 1

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .registers 4

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default already specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 6

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->access$002(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    :cond_12
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_33

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v2

    aput v0, v2, v1

    :cond_33
    return-object p0
.end method

.method public addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 6

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->access$202(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    :cond_12
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_33

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v2

    aput v0, v2, v1

    :cond_33
    return-object p0
.end method

.method public build()Landroid/print/PrinterCapabilitiesInfo;
    .registers 5

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_91

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq v0, v1, :cond_81

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$500(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    if-eq v0, v1, :cond_71

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$600(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0, v2, v2}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    :cond_5d
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$300(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0

    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 5

    sget-object v0, Landroid/print/-$$Lambda$PrinterCapabilitiesInfo$Builder$dbsSt8pZfd6hqZ6hGCnpzhPK6Uk;->INSTANCE:Landroid/print/-$$Lambda$PrinterCapabilitiesInfo$Builder$dbsSt8pZfd6hqZ6hGCnpzhPK6Uk;

    # invokes: Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->access$400(ILjava/util/function/IntConsumer;)V

    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$502(Landroid/print/PrinterCapabilitiesInfo;I)I

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x2

    aput p2, v0, v1

    return-object p0
.end method

.method public setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 5

    sget-object v0, Landroid/print/-$$Lambda$PrinterCapabilitiesInfo$Builder$gsgXbNHGWpWENdPzemgHcCY8HnE;->INSTANCE:Landroid/print/-$$Lambda$PrinterCapabilitiesInfo$Builder$gsgXbNHGWpWENdPzemgHcCY8HnE;

    # invokes: Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->access$400(ILjava/util/function/IntConsumer;)V

    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$602(Landroid/print/PrinterCapabilitiesInfo;I)I

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x3

    aput p2, v0, v1

    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$302(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
