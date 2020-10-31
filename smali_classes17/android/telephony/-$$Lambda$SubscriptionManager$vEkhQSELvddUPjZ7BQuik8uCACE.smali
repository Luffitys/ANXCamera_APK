.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$0:Landroid/telephony/SubscriptionManager;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$1:Z

    iput p3, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$2:I

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/ISub;)I
    .registers 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$0:Landroid/telephony/SubscriptionManager;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$1:Z

    iget v2, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$vEkhQSELvddUPjZ7BQuik8uCACE;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/telephony/SubscriptionManager;->lambda$setOpportunistic$6$SubscriptionManager(ZILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
