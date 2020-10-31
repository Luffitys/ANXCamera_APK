.class public Lcom/miui/internal/initialization/OverrideHelper;
.super Ljava/lang/Object;
.source "OverrideHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final doInitialize()V
    .registers 2

    const-string v0, "miuisdk"

    const-string v1, "initialize without hook"

    invoke-static {v0, v1}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ResourcesManager_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_Preference_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->get()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_GridView_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListView_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_Spinner_class;

    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->get()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;

    return-void
.end method
