for i, municipality_name in zip(df_dmo_boundaries.index, df_dmo_boundaries['municipality_name']):
    print(i, municipality_name)
    if ' - ' in municipality_name:
        df_dmo_boundaries.loc[i, 'municipality_name'] = municipality_name.replace(' - ', '-')
    elif ' – ' in municipality_name:
        df_dmo_boundaries.loc[i, 'municipality_name'] = municipality_name.replace(' – ', '-')
    elif ' –' in municipality_name:
        df_dmo_boundaries.loc[i, 'municipality_name'] = municipality_name.replace(' –', '-')
    elif ',' in municipality_name:
        df_dmo_boundaries.loc[i, 'municipality_name'] = municipality_name.replace(',', '')
    elif 'n/' in municipality_name:
        df_dmo_boundaries.loc[i, 'municipality_name'] = municipality_name.replace('n/', 'nad ')
    elif municipality_name == 'veľký ďúr':
        df_dmo_boundaries.loc[i, 'municipality_name'] = 'veľký ďur'