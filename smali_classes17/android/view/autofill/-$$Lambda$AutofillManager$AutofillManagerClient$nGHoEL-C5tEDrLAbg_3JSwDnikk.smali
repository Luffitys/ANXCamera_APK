.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$0:Landroid/view/autofill/AutofillManager;

    iput-wide p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$1:J

    iput-object p4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$0:Landroid/view/autofill/AutofillManager;

    iget-wide v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$1:J

    iget-object v3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$notifyDisableAutofill$8(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method
