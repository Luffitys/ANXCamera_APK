.class public final synthetic Lcom/android/camera/fragment/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/CtaNoticeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/CtaNoticeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/a;->wb:Lcom/android/camera/fragment/CtaNoticeFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/a;->wb:Lcom/android/camera/fragment/CtaNoticeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/CtaNoticeFragment;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method
