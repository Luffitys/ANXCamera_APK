.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mCustomPrinterIconGen:I

.field private mDescription:Ljava/lang/String;

.field private mHasCustomPrinterIcon:Z

.field private mIconResourceId:I

.field private mInfoIntent:Landroid/app/PendingIntent;

.field private mName:Ljava/lang/String;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # invokes: Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$000(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    # invokes: Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Landroid/print/PrinterInfo;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    # invokes: Landroid/print/PrinterInfo;->checkStatus(I)I
    invoke-static {p3}, Landroid/print/PrinterInfo;->access$200(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$300(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    # getter for: Landroid/print/PrinterInfo;->mName:Ljava/lang/String;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$400(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    # getter for: Landroid/print/PrinterInfo;->mStatus:I
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$500(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    # getter for: Landroid/print/PrinterInfo;->mIconResourceId:I
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$600(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    # getter for: Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$700(Landroid/print/PrinterInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    # getter for: Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$800(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    # getter for: Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$900(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    # getter for: Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$1000(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$1100(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .registers 13

    new-instance v11, Landroid/print/PrinterInfo;

    iget-object v1, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    iget v4, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    iget-boolean v5, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    iget-object v6, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    iget-object v7, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget v9, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo$1;)V

    return-object v11
.end method

.method public incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;
    .registers 2

    iget v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    return-object p0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setHasCustomPrinterIcon(Z)Landroid/print/PrinterInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    return-object p0
.end method

.method public setIconResourceId(I)Landroid/print/PrinterInfo$Builder;
    .registers 3

    const-string v0, "iconResourceId can\'t be negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    return-object p0
.end method

.method public setInfoIntent(Landroid/app/PendingIntent;)Landroid/print/PrinterInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .registers 3

    # invokes: Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .registers 3

    # invokes: Landroid/print/PrinterInfo;->checkStatus(I)I
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$200(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    return-object p0
.end method
