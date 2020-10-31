.class Lmiui/preference/ButtonPreference$1;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/preference/ButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/preference/ButtonPreference;


# direct methods
.method constructor <init>(Lmiui/preference/ButtonPreference;)V
    .registers 2

    iput-object p1, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    # getter for: Lmiui/preference/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v0}, Lmiui/preference/ButtonPreference;->access$000(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    # getter for: Lmiui/preference/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v0}, Lmiui/preference/ButtonPreference;->access$000(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/ButtonPreference$1;->this$0:Lmiui/preference/ButtonPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_13
    return-void
.end method
