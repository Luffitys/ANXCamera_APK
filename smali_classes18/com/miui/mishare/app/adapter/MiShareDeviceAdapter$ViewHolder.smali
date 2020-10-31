.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "MiShareDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    return-void
.end method
