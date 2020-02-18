.class synthetic Lcom/android/camera/fragment/FragmentMainContent$6;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentMainContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$fragment$FragmentMainContent$CoverState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->values()[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$6;->$SwitchMap$com$android$camera$fragment$FragmentMainContent$CoverState:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/fragment/FragmentMainContent$6;->$SwitchMap$com$android$camera$fragment$FragmentMainContent$CoverState:[I

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/camera/fragment/FragmentMainContent$6;->$SwitchMap$com$android$camera$fragment$FragmentMainContent$CoverState:[I

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/camera/fragment/FragmentMainContent$6;->$SwitchMap$com$android$camera$fragment$FragmentMainContent$CoverState:[I

    sget-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
