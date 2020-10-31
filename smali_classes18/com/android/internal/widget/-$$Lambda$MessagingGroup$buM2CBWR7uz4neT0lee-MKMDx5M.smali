.class public final synthetic Lcom/android/internal/widget/-$$Lambda$MessagingGroup$buM2CBWR7uz4neT0lee-MKMDx5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/MessagingGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$buM2CBWR7uz4neT0lee-MKMDx5M;->f$0:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$buM2CBWR7uz4neT0lee-MKMDx5M;->f$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->lambda$hideAnimated$2$MessagingGroup()V

    return-void
.end method
