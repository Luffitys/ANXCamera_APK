.class public final synthetic Lcom/android/camera/fragment/mimoji/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/features/mimoji2/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

.field public final synthetic OooO0O0:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;

.field public final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO00o:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO0O0:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;

    iput p3, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO00o:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO0O0:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;

    iget v2, p0, Lcom/android/camera/fragment/mimoji/OooO0OO;->OooO0OO:I

    move-object v3, p1

    check-cast v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->OooO0O0(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;ILcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V

    return-void
.end method
