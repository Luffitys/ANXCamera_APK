.class public final synthetic Lcom/android/camera/fragment/beauty/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/a;->wb:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/a;->wb:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
