.class public Lmiui/payment/exception/PaymentServiceFailureException;
.super Ljava/lang/Exception;
.source "PaymentServiceFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorResult:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lmiui/payment/exception/PaymentServiceFailureException;->mErrorCode:I

    if-nez p3, :cond_f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/payment/exception/PaymentServiceFailureException;->mErrorResult:Landroid/os/Bundle;

    goto :goto_11

    :cond_f
    iput-object p3, p0, Lmiui/payment/exception/PaymentServiceFailureException;->mErrorResult:Landroid/os/Bundle;

    :goto_11
    return-void
.end method


# virtual methods
.method public getError()I
    .registers 2

    iget v0, p0, Lmiui/payment/exception/PaymentServiceFailureException;->mErrorCode:I

    return v0
.end method

.method public getErrorResult()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lmiui/payment/exception/PaymentServiceFailureException;->mErrorResult:Landroid/os/Bundle;

    return-object v0
.end method
