.class public final synthetic Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/service/euicc/EuiccProfileInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I[Landroid/service/euicc/EuiccProfileInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iput p2, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$1:I

    iput-object p3, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$2:[Landroid/service/euicc/EuiccProfileInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iget v1, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$1:I

    iget-object v2, p0, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$1$WCF3YSMl2TGGvaCq1GRblRP0j8M;->f$2:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-static {v0, v1, v2}, Landroid/telephony/euicc/EuiccCardManager$1;->lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I[Landroid/service/euicc/EuiccProfileInfo;)V

    return-void
.end method
